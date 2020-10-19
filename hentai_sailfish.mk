#
# Copyright 2015 The Android Open Source Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit hOS configs
$(call inherit-product, vendor/hentai/config/common_telephony.mk)

# Inherit device specific makefiles
$(call inherit-product, device/google/marlin/device-sailfish.mk)
$(call inherit-product, vendor/google_devices/sailfish/sailfish-vendor.mk)

# Device specific properties
TARGET_BOOT_ANIMATION_RES := 1440

# Gapps
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false

# Device specific properties
PRODUCT_NAME := hentai_sailfish
PRODUCT_DEVICE := sailfish
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel
PRODUCT_MANUFACTURER := HTC

# GMS client ID
PRODUCT_GMS_CLIENTID_BASE := android-google

# Device props
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    PRIVATE_BUILD_DESC="sailfish-user 8.1.0 OPM1.171019.021 4565141 release-keys"

BUILD_FINGERPRINT := google/sailfish/sailfish:8.1.0/OPM1.171019.021/4565141:user/release-keys
