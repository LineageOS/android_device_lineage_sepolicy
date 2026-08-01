#
# This policy configuration will be used by all qcom products
# that inherit from Lineage
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/lineage/sepolicy/qcom/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/lineage/sepolicy/qcom/dynamic \
    device/lineage/sepolicy/qcom/system
else
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/lineage/sepolicy/qcom/dynamic \
    device/lineage/sepolicy/qcom/vendor
endif

ifeq (,$(filter device/qcom/sepolicy-legacy-um/legacy/vendor/common device/qcom/sepolicy_vndr/legacy-um/legacy/vendor/common, $(BOARD_VENDOR_SEPOLICY_DIRS)))
BOARD_SEPOLICY_M4DEFS += \
    custom_ab_block_device=vendor_custom_ab_block_device \
    display_vendor_data_file=vendor_display_vendor_data_file \
    hal_gnss_qti=vendor_hal_gnss_qti \
    hal_perf_default=vendor_hal_perf_default \
    location_domain=vendor_location \
    persist_block_device=vendor_persist_block_device \
    qdisplay_service=vendor_qdisplay_service \
    sysfs_battery_supply=vendor_sysfs_battery_supply \
    sysfs_devfreq=vendor_sysfs_devfreq \
    sysfs_graphics=vendor_sysfs_graphics \
    sysfs_kgsl=vendor_sysfs_kgsl \
    sysfs_msm_perf=vendor_sysfs_msm_perf \
    sysfs_scsi_host=vendor_sysfs_scsi_host \
    sysfs_socinfo_sensitive=vendor_sysfs_soc_sensitive \
    sysfs_usb_supply=vendor_sysfs_usb_supply
else
BOARD_SEPOLICY_M4DEFS += \
    location_domain=location
endif
