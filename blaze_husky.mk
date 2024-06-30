#
# Copyright 2021 The Android Open-Source Project
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

TARGET_LINUX_KERNEL_VERSION := 5.15

USE_SWIFTSHADER := true
BOARD_USES_SWIFTSHADER := true

$(call inherit-product, device/google/zuma/aosp_common.mk)
$(call inherit-product, device/google/shusky/device-husky.mk)
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)
$(call inherit-product, device/google/shusky/aosp_husky.mk)

include device/google/shusky/husky/device-lineage.mk
include device/google/shusky/BoardConfigLineage.mk

 #Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

 #Blaze Stuff
BLAZE_BUILD_TYPE := UNOFFICIAL
BLAZE_MAINTAINER := Slogar25
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_BLUR := true
TARGET_UDFPS_ANIMATIONS := true
WITH_GAPPS := true

 #Xtras
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_IS_PIXEL_8 := true
TARGET_IS_PIXEL := true
EXTRA_UDFPS_ICONS := true
TARGET_SUPPORTS_ADPATIVE_CHARGING := true
TARGET_SUPPORTS_GOOGLE_BATTERY := true
TARGET_SUPPORTS_GOOGLE_CAMERA := true
TARGET_SUPPORTS_DREAMLINER := true
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_BUILD_FULLY_SIGN := true
TARGET_INCLUDE_PIXEL_SEPOLICY := false

# Device identifier. This must come after all inclusions
PRODUCT_NAME := blaze_husky
PRODUCT_DEVICE := husky
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_BRAND := Pixel
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 AP2A.240605.024 11860263 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/AP2A.240605.024/11860263:user/release-keys

DEVICE_MANIFEST_FILE := \
	device/google/shusky/manifest.xml

$(call inherit-product, vendor/google/husky/husky-vendor.mk)
