ifeq ($(TARGET_PRODUCT),disco_hammerhead)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/disco_hammerhead.mk
endif

ifeq ($(TARGET_PRODUCT),disco_shamu)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/disco_shamu.mk
endif
