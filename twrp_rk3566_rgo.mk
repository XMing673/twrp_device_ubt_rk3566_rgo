#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rk3566_rgo device
$(call inherit-product, device/rockchip/rk3566_rgo/device.mk)

PRODUCT_DEVICE := rk3566_rgo
PRODUCT_NAME := twrp_rk3566_rgo
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := AlphaMini2
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3566_rgo-user 11 RD2A.211001.002 eng.zxlab.20251024.151039 release-keys"

BUILD_FINGERPRINT := rockchip/rk3566_rgo/rk3566_rgo:11/RD2A.211001.002/zxlab10241557:user/release-keys
