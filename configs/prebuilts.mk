# APNs
PRODUCT_COPY_FILES += \
	vendor/disco/prebuilts/etc/apns-conf.xml:system/etc/apns-conf.xml

# Camera effects
PRODUCT_COPY_FILES += \
	vendor/disco/prebuilts/media/LMprec_508.emd:system/media/LMprec_508.emd \
	vendor/disco/prebuilts/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# LatinIME library for gesture typing
PRODUCT_COPY_FILES += \
	vendor/disco/prebuilts/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# Backup tool support
PRODUCT_COPY_FILES += \
	vendor/disco/prebuilts/addon.d/50-disco.sh:system/addon.d/50-disco.sh \
	vendor/disco/prebuilts/bin/backuptool.functions:system/bin/backuptool.functions \
	vendor/disco/prebuilts/bin/backuptool.sh:system/bin/backuptool.sh

