#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from msm8916_64 device
$(call inherit-product, device/oppo/msm8916_64/device.mk)

PRODUCT_DEVICE := msm8916_64
PRODUCT_NAME := omni_msm8916_64
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := MSM8916 for arm64
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8916_64-user 5.1.1 LMY47V eng.root.20160820.193656 dev-keys"

BUILD_FINGERPRINT := OPPO/msm8916_64/msm8916_64:5.1.1/LMY47V/root08201938:user/dev-keys
