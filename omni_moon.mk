#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from moon device
$(call inherit-product, device/xiaomi/moon/device.mk)

PRODUCT_DEVICE := moon
PRODUCT_NAME := omni_moon
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := moon
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_moon-user 12 SP1A.210812.016 V816.0.4.0.UNTMIXM release-keys"

BUILD_FINGERPRINT := Redmi/vnd_moon/moon:12/SP1A.210812.016/V816.0.4.0.UNTMIXM:user/release-keys
