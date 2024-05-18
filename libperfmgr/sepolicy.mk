ifneq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/lineage/sepolicy/libperfmgr/vendor
endif
