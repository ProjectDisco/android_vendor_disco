ifeq (disco_hammerhead,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/disco_hammerhead.mk
endif

ifeq (disco_mako,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/disco_mako.mk
endif

ifeq (disco_shamu,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/disco_shamu.mk
endif

ifeq (disco_emulator,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/disco_emulator.mk
endif
