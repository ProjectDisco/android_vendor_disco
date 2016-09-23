ifeq ($(TARGET_PRODUCT),disco_hammerhead)

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

# build.prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead

endif
