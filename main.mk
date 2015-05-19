PRODUCT_BRAND ?= disco

# define disco version
DISCO_VERSION := 1.8

ROM_VERSION := $(TARGET_PRODUCT)-$(DISCO_VERSION)-$(shell date -u +%Y.%m.%d)

PRODUCT_PACKAGE_OVERLAYS += vendor/disco/overlay

PRODUCT_COPY_FILES += \
    vendor/disco/prebuilt/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/disco/prebuilt/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/disco/prebuilt/system/app/LockClock.apk:system/app/LockClock.apk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.disco.version=$(ROM_VERSION) \
    ro.mod.version=$(ROM_VERSION) \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# Lollipop UI Sounds
PRODUCT_COPY_FILES += \
    vendor/disco/overlay/system/media/audio/ui/audio_end.ogg:system/media/audio/ui/audio_end.ogg \
    vendor/disco/overlay/system/media/audio/ui/audio_initiate.ogg:system/media/audio/ui/audio_initiate.ogg \
    vendor/disco/overlay/system/media/audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
    vendor/disco/overlay/system/media/audio/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
    vendor/disco/overlay/system/media/audio/ui/Dock.ogg:system/media/audio/ui/Dock.ogg \
    vendor/disco/overlay/system/media/audio/ui/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
    vendor/disco/overlay/system/media/audio/ui/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
    vendor/disco/overlay/system/media/audio/ui/KeypressInvalid.ogg:system/media/audio/ui/KeypressInvalid.ogg \
    vendor/disco/overlay/system/media/audio/ui/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
    vendor/disco/overlay/system/media/audio/ui/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
    vendor/disco/overlay/system/media/audio/ui/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
    vendor/disco/overlay/system/media/audio/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
    vendor/disco/overlay/system/media/audio/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
    vendor/disco/overlay/system/media/audio/ui/NFCFailure.ogg:system/media/audio/ui/NFCFailure.ogg \
    vendor/disco/overlay/system/media/audio/ui/NFCInitiated.ogg:system/media/audio/ui/NFCInitiated.ogg \
    vendor/disco/overlay/system/media/audio/ui/NFCSuccess.ogg:system/media/audio/ui/NFCSuccess.ogg \
    vendor/disco/overlay/system/media/audio/ui/NFCTransferComplete.ogg:system/media/audio/ui/NFCTransferComplete.ogg \
    vendor/disco/overlay/system/media/audio/ui/NFCTransferInitiated.ogg:system/media/audio/ui/NFCTransferInitiated.ogg \
    vendor/disco/overlay/system/media/audio/ui/Trusted.ogg:system/media/audio/ui/Trusted.ogg \
    vendor/disco/overlay/system/media/audio/ui/Undock.ogg:system/media/audio/ui/Undock.ogg \
    vendor/disco/overlay/system/media/audio/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
    vendor/disco/overlay/system/media/audio/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
    vendor/disco/overlay/system/media/audio/ui/VideoStop.ogg:system/media/audio/ui/VideoStop.ogg \
    vendor/disco/overlay/system/media/audio/ui/WirelessChargingStarted.ogg:system/media/audio/ui/WirelessChargingStarted.ogg
