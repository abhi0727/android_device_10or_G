#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mido device
$(call inherit-product, device/10or/G/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := G
PRODUCT_NAME := lineage_G
PRODUCT_BRAND := 10or
PRODUCT_MODEL := G
PRODUCT_MANUFACTURER := 10or
TARGET_VENDOR := 10or
BOARD_VENDOR := 10or

PRODUCT_GMS_CLIENTID_BASE := android-10or
TARGET_VENDOR := 10or
TARGET_VENDOR_PRODUCT_NAME := G

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mido-user 7.0 NRD90M V9.6.1.0.NCFMIFD release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/mido/mido:7.0/NRD90M/V9.6.1.0.NCFMIFD:user/release-keys"
