#!/bin/bash
set -e

# prepare the source
. build/envsetup.sh
lunch

# parameters
while [[ "$#" > 0 ]];
    do
        PARAM=$(echo ${1,,})
        case $PARAM in
        -c|--clean)
            FLAG_MAKE_CLEAN=y
            ;;
        -p|--push)
            FLAG_PUSH=y
            ;;
        -b|--backup)
            FLAG_BACKUP=y
            ;;
        *)
            echo -e "Unknown parameter $1"
	    exit
            ;;
        esac
        shift
done

# cpu threads
export THREADS=$(cat /proc/cpuinfo | grep '^processor' | wc -l)

# make clean if wanted
if [ "$FLAG_MAKE_CLEAN" = 'y' ];
    then
	make clean
fi

# compile packages
make -j"$THREADS" SystemUI
make -j"$THREADS" Settings
make -j"$THREADS" framework
make -j"$THREADS" SettingsProvider

# start adb server and remount /system if needed
if [ "$FLAG_BACKUP" = 'y' ] || [ "$FLAG_PUSH" = 'y' ];
    then
	adb start-server
	adb root
	adb remount
fi

# backup files if wanted
if [ "$FLAG_BACKUP" = 'y' ];
    then

	# delete previous backups
	rm -rf /home/$USER/quicktest-backups

	mkdir -p /home/$USER/quicktest-backups/system/priv-app/SystemUI
	adb pull /system/priv-app/SystemUI/SystemUI.apk /home/$USER/quicktest-backups/system/priv-app/SystemUI/

	mkdir -p /home/$USER/quicktest-backups/system/priv-app/Settings
	adb pull /system/priv-app/Settings/Settings.apk /home/$USER/quicktest-backups/system/priv-app/Settings/

	mkdir -p /home/$USER/quicktest-backups/system/framework/
	adb pull /system/framework/framework-res.apk /home/$USER/quicktest-backups/system/framework/
	adb pull /system/framework/framework.jar /home/$USER/quicktest-backups/system/framework/

	mkdir -p /home/$USER/quicktest-backups/system/priv-app/SettingsProvider
	adb pull /system/priv-app/SettingsProvider/SettingsProvider.apk /home/$USER/quicktest-backups/system/priv-app/SettingsProvider/
fi

# push files to device if wanted
if [ "$FLAG_PUSH" = 'y' ];
    then

# push SystemUI.apk
adb push $OUT/system/priv-app/SystemUI/SystemUI.apk /system/priv-app/SystemUI/SystemUI.apk
adb shell chmod 0644 /system/priv-app/SystemUI/SystemUI.apk
sleep 2

# push Settings.apk
adb push $OUT/system/priv-app/Settings/Settings.apk /system/priv-app/Settings/Settings.apk
adb shell chmod 0644 /system/priv-app/Settings/Settings.apk
sleep 2

# push framework.jar and frameworks-res.apk
adb push $OUT/system/framework/framework-res.apk /system/framework/framework-res.apk
adb shell chmod 0644 /system/framework/framework-res.apk
sleep 2
adb push $OUT/system/framework/framework.jar /system/framework/framework.jar
adb shell chmod 0644 /system/framework/framework.jar
sleep 2

# push SettingsProvider.apk
adb push $OUT/system/priv-app/SettingsProvider/SettingsProvider.apk /system/priv-app/SettingsProvider/SettingsProvider.apk
adb shell chmod 0644 /system/priv-app/SettingsProvider/SettingsProvider.apk
sleep 2

# reboot device
adb reboot

fi
