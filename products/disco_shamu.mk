ifeq (disco_shamu,$(TARGET_PRODUCT))

# Include ProjectDisco main configuration
include vendor/disco/main.mk

# Inherit device configuration
$(call inherit-product, device/moto/shamu/full_shamu.mk)

# Setup device specific product configuration
PRODUCT_NAME := disco_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.1.1/LMY48M/2167285:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1.1 LMY48M 2167285 release-keys"

endif
