ifeq (disco_grouper,$(TARGET_PRODUCT))

# Screen resolution
TARGET_SCREEN_RES := 1280x800

# Include ProjectDisco main configuration
include vendor/disco/main.mk

# Inherit device configuration
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Setup device specific product configuration
PRODUCT_NAME := disco_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=nakasi \
    BUILD_FINGERPRINT=google/nakasi/grouper:5.1.1/LVY48F/2168849:user/release-keys \
    PRIVATE_BUILD_DESC="nakasi-user 5.1.1 LVY48F 2168849 release-keys"

endif
