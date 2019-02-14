#
# This policy configuration will be used by all qcom products
# that inherit from Lineage
#

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/lineage/sepolicy/qcom/private

ifneq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_SEPOLICY_DIRS += \
    device/lineage/sepolicy/qcom/vendor
endif
