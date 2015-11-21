# AOSP fixes
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy

# ProjectDisco version in build.prop
include vendor/disco/configs/version.mk
PRODUCT_PROPERTY_OVERRIDES += \
    ro.disco.version=$(DISCO_VERSION)

# Use Google's stock sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Titania.ogg \
    ro.config.notification_sound=Tethys.ogg \
    ro.config.alarm_alert=Osmium.ogg

# Build properties for only telephony devices
ifeq ($(TARGET_IS_TELEPHONY_DEVICE),true)
# Turn off carrier provisioning by default to allow tethering
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dun.override=0
endif
