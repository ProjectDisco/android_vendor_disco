ifeq ($(TARGET_PRODUCT),disco_hammerhead)

# Include ProjectDisco main configuration
include vendor/disco/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Vendor blobs
$(call inherit-product, vendor/lge/hammerhead/hammerhead-vendor.mk)

# Setup device specific product configuration
PRODUCT_NAME := disco_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Allow text relocations
TARGET_ALLOW_TEXT_RELOCATIONS := true

# Inline kernel building
TARGET_KERNEL_CONFIG := hammerhead_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage-dtb

# build.prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead

endif
