ifeq (disco_mako,$(TARGET_PRODUCT))

# Include ProjectDisco main configuration
include vendor/disco/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

# Setup device specific product configuration
PRODUCT_NAME := disco_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/occam/mako:5.1.1/LMY48M/2167285:user/release-keys \
    PRIVATE_BUILD_DESC="occam-user 5.1.1 LMY48M 2167285 release-keys"

endif
