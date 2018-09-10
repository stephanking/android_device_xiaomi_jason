#
# Copyright (C) 2018 The LineageOS Project
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

# Release name
PRODUCT_RELEASE_NAME := jason

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/aosp/common.mk)

# Bootanimation
TARGET_BOOTANIMATION_HALF_RES := true

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2018-08-05

# Inherit from jason device
$(call inherit-product, device/xiaomi/jason/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_jason
PRODUCT_DEVICE := jason
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 3

TARGET_VENDOR_PRODUCT_NAME := jason
TARGET_VENDOR_DEVICE_NAME := jason
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=jason PRODUCT_NAME=jason
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jason-user 8.1.0 OPM1.171019.019 V10.0.2.0.OCHCNFH release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/jason/jason:8.1.0/OPM1.171019.019/V10.0.2.0.OCHCNFH:user/release-keys"
