# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Setup device specific product configuration
PRODUCT_NAME := disco_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="occam" BUILD_FINGERPRINT="google/occam/mako:5.1/LMY47O/1783956:user/release-keys" PRIVATE_BUILD_DESC="occam-user 5.1 LMY47O 1783956 release-keys"
