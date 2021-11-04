<<<<<<< HEAD   (b88be8 atv: Allow gmscore_app what it needs)
=======
#
# This policy configuration will be used by atv products that
# inherit from Lineage
#

ifneq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_SEPOLICY_DIRS += \
    device/lineage/sepolicy/atv/vendor
endif

PRODUCT_PRIVATE_SEPOLICY_DIRS += \
   device/lineage/sepolicy/atv/private
>>>>>>> CHANGE (0840e7 atv: Label and allow mediashell_app what it needs)
