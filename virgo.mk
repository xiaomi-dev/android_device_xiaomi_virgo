#
# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs

$(call inherit-product, device/xiaomi/msm8974-common/cancro_common.mk)
$(call inherit-product, vendor/xiaomi/virgo/virgo-vendor.mk)
DEVICE_PACKAGE_OVERLAYS += device/xiaomi/virgo/overlay
PRODUCT_DEVICE := virgo
PRODUCT_NAME := virgo
PRODUCT_MODEL := MI NOTE LTE

PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.pcm.enable=true

PRODUCT_COPY_FILES += \
    device/xiaomi/virgo/etc/bl_lut.txt:system/etc/bl_lut.txt \
    device/xiaomi/virgo/etc/calib.cfg:system/etc/calib.cfg

# Wifi
PRODUCT_COPY_FILES += \
    device/xiaomi/virgo/etc/wifi/WCNSS_qcom_wlan_nv_x5.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_x5.bin \
    device/xiaomi/virgo/etc/wifi/WCNSS_qcom_wlan_nv_x5gbl.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_x5gbl.bin

# Audio
PRODUCT_COPY_FILES += \
    device/xiaomi/virgo/etc/mixer_paths_5_x.xml:system/etc/mixer_paths_5_x.xml \
    device/xiaomi/virgo/etc/mixer_paths_5_x_forte.xml:system/etc/mixer_paths_5_x_forte.xml \
    device/xiaomi/virgo/etc/mixer_paths_auxpcm_5_x.xml:system/etc/mixer_paths_auxpcm_5_x.xml \
    device/xiaomi/virgo/etc/acdbdata/MTP/X5/MTP_X5_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_Bluetooth_cal.acdb \
    device/xiaomi/virgo/etc/acdbdata/MTP/X5/MTP_X5_General_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_General_cal.acdb \
    device/xiaomi/virgo/etc/acdbdata/MTP/X5/MTP_X5_Global_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_Global_cal.acdb \
    device/xiaomi/virgo/etc/acdbdata/MTP/X5/MTP_X5_Handset_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_Handset_cal.acdb \
    device/xiaomi/virgo/etc/acdbdata/MTP/X5/MTP_X5_Hdmi_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_Hdmi_cal.acdb \
    device/xiaomi/virgo/etc/acdbdata/MTP/X5/MTP_X5_Headset_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_Headset_cal.acdb \
    device/xiaomi/virgo/etc/acdbdata/MTP/X5/MTP_X5_Speaker_cal.acdb:system/etc/acdbdata/MTP/X5/MTP_X5_Speaker_cal.acdb

PRODUCT_COPY_FILES += device/xiaomi/virgo/diracmobile_5.config:system/vendor/etc/diracmobile_5.config
