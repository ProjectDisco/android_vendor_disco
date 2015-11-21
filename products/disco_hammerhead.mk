ifeq ($(TARGET_PRODUCT),disco_hammerhead)

# Screen resolution
TARGET_SCREEN_RES := 1080x1920

# Telephony device
TARGET_IS_TELEPHONY_DEVICE := true

# Include ProjectDisco main configuration
include vendor/disco/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Setup device specific product configuration
PRODUCT_NAME := disco_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:6.0/MRA58K/2256973:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 6.0 MRA58K 2256973 release-keys"

endif
