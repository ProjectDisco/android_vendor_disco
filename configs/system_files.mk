# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/disco/overlay/

# APNs
PRODUCT_COPY_FILES += \
vendor/disco/prebuilt/system/etc/apns-conf.xml:system/etc/apns-conf.xml

# Camera effects
PRODUCT_COPY_FILES += \
vendor/disco/prebuilt/system/media/LMprec_508.emd:system/media/LMprec_508.emd \
vendor/disco/prebuilt/system/media/PFFprec_600.emd:system/media/PFFprec_600.emd
