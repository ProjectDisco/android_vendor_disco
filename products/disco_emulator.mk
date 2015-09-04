ifeq (disco_emulator,$(TARGET_PRODUCT))

# Include ProjectDisco main configuration
include vendor/disco/main.mk

# Inherit device configuration
$(call inherit-product, build/target/product/full.mk)

# Setup device specific product configuration
PRODUCT_NAME := disco_emulator
PRODUCT_BRAND := Android
PRODUCT_DEVICE := generic
PRODUCT_MODEL := ARM emulator

endif
