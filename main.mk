PRODUCT_BRAND ?= disco

# define disco version
DISCO_VERSION := 1.0

ROM_VERSION := $(TARGET_PRODUCT)-$(DISCO_VERSION)-$(shell date -u +%Y.%m.%d)

PRODUCT_PACKAGE_OVERLAYS += vendor/disco/overlay

PRODUCT_COPY_FILES += \
    vendor/disco/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/disco/prebuilt/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/disco/prebuilt/system/app/LockClock.apk:system/app/LockClock.apk \
    vendor/disco/prebuilt/system/xbin/busybox:system/xbin/busybox

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

# Chromium Prebuilt
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)
-include prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk
endif

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/disco/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/disco/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

