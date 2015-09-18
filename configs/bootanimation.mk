# Clear PRODUCT_BOOTANIMATION
PRODUCT_BOOTANIMATION :=

# Add bootanimation based on device resolution
ifeq (1920x1080,$(TARGET_SCREEN_RES))
PRODUCT_BOOTANIMATION := vendor/disco/prebuilts/bootanimation/bootanimation-1920x1080.zip
endif

ifeq (1280x720,$(TARGET_SCREEN_RES))
PRODUCT_BOOTANIMATION := vendor/disco/prebuilts/bootanimation/bootanimation-1280x720.zip
endif

ifeq (1280x800,$(TARGET_SCREEN_RES))
PRODUCT_BOOTANIMATION := vendor/disco/prebuilts/bootanimation/bootanimation-1280x800.zip
endif
