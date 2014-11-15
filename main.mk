PRODUCT_BRAND ?= disco

# define disco version
DISCO_VERSION := 1.0

ROM_VERSION := disco-$(DISCO_VERSION)-$(shell date -u +%Y-%m-%d)-$(TARGET_PRODUCT)

PRODUCT_PACKAGE_OVERLAYS += vendor/disco/overlay

PRODUCT_COPY_FILES += \
    vendor/disco/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/disco/prebuilt/system/media/bootanimation.zip:system/media/bootanimation.zip

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
