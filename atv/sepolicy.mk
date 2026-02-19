#
# This policy configuration will be used by atv products that
# inherit from Lineage
#

ifneq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/lineage/sepolicy/atv/vendor
endif

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
   device/lineage/sepolicy/atv/system_ext/private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
   device/lineage/sepolicy/atv/system_ext/public
