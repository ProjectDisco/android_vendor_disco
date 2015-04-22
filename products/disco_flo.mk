# Inherit AOSP device configuration for flo
$(call inherit-product, device/asus/flo/full_flo.mk)

# Setup device specific product configuration
PRODUCT_NAME := disco_flo
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7 WiFi
PRODUCT_MANUFACTURER := ASUS
PRODUCT_RESTRICT_VENDOR_FILES := false

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="razor" BUILD_FINGERPRINT=google/razor/flo:5.1/LMY47O/1783956:user/release-keys PRIVATE_BUILD_DESC="razor-user 5.1 LMY47O 1783956 release-keys"
