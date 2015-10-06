ifeq (disco_hammerhead,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/disco_hammerhead.mk
endif

ifeq (disco_shamu,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/disco_shamu.mk
endif
