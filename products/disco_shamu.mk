ifeq ($(TARGET_PRODUCT),disco_shamu)

# Screen resolution
TARGET_SCREEN_RES := 1440x2560

# Telephony device
TARGET_IS_TELEPHONY_DEVICE := true

# Include ProjectDisco main configuration
include vendor/disco/main.mk

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Setup device specific product configuration
PRODUCT_NAME := disco_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := false

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:6.0/MRA58K/2256973:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 6.0 MRA58K 2256973 release-keys"

endif
