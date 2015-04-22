# Inherit AOSP device configuration for mako
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Setup device specific product configuration
PRODUCT_NAME := disco_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := false

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="shamu" BUILD_FINGERPRINT="google/shamu/shamu:5.1/LMY47E/1748839:user/release-keys" PRIVATE_BUILD_DESC="shamu-user 5.1 LMY47E 1748839 release-keys"

