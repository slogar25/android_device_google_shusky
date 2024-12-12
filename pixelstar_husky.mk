#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_husky.mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)

include device/google/shusky/husky/device-lineage.mk

# Recents Blur
TARGET_USES_BLUR_RECENT := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Live Wallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Pixel Carrier
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_INCLUDE_PIXEL_IMS := true
TARGET_INCLUDE_PIXEL_EUICC := true
TARGET_INCLUDE_CARRIER_SERVICES := true

# Now Playing
TARGET_SUPPORTS_NOW_PLAYING := true

# Clear Calling
TARGET_SUPPORTS_CLEAR_CALLING := true

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := pixelstar_husky

# Boot animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 AP2A.240905.003 12231197 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/AP2A.240905.003/12231197:user/release-keys

$(call inherit-product, vendor/google/husky/husky-vendor.mk)
