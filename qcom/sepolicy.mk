#
# This policy configuration will be used by all qcom products
# that inherit from Lineage
#

BOARD_SEPOLICY_DIRS += \
    device/lineage/sepolicy/qcom \
    device/lineage/sepolicy/qcom/common \
    device/lineage/sepolicy/qcom/ssg \
    device/lineage/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)

ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
BOARD_SEPOLICY_DIRS += \
    device/qcom/lineage/sepolicy/qcom/test
endif

BOARD_PLAT_PUBLIC_SEPOLICY_DIR := \
    device/lineage/sepolicy/qcom/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR := \
    device/lineage/sepolicy/qcom/private
