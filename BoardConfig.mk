
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/xiaomi/virgo/bluetooth

include device/xiaomi/msm8974-common/BoardConfigCommon.mk
TARGET_RELEASETOOLS_EXTENSIONS := device/xiaomi/virgo

TARGET_OTA_ASSERT_DEVICE := virgo

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368

# Dual sim solution in virgo
CONFIG_EAP_PROXY_DUAL_SIM := true

# inherit from the proprietary version
-include vendor/xiaomi/virgo/BoardConfigVendor.mk
