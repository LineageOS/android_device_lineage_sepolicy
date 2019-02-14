#
# This policy configuration will be used by all qcom products
# that inherit from Lineage
#

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/lineage/sepolicy/qcom/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/lineage/sepolicy/qcom/dynamic \
    device/lineage/sepolicy/qcom/priv_vendor
else
BOARD_SEPOLICY_DIRS += \
    device/lineage/sepolicy/qcom/dynamic \
    device/lineage/sepolicy/qcom/vendor
endif
