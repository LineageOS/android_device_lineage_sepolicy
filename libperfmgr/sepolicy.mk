ifneq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
ifeq ($(TARGET_USES_LINEAGE_POWERHAL), true)
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/lineage/sepolicy/libperfmgr/vendor
endif
endif
