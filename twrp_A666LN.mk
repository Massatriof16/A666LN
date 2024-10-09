#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/itel/A666LN
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from itel-A666LN device
$(call inherit-product, device/itel/A666LN/device.mk)




PRODUCT_DEVICE := A666LN
PRODUCT_NAME := twrp_A666LN
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel A666LN
PRODUCT_MANUFACTURER := itel
PRODUCT_RELEASE_NAME := Itel Itel A666LN





PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="A666LN-user 13 TP1A.220624.014 114 release-keys"

BUILD_FINGERPRINT := Itel/A666LN-OP/itel-A666LN:13/TP1A.220624.014/231129V157:user/release-keys
