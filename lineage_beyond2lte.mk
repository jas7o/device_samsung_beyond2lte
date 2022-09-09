#
# Copyright (C) 2022 The LineageOS Project
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Inherit from beyond2lte device
$(call inherit-product, device/samsung/beyond2lte/device.mk)

## Inherit some common build stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


## Flags
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440
TARGET_HAVE_FOD := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
TARGET_USES_AOSP_RECOVERY := true

## Device identifier, this must come after all inclusions
PRODUCT_NAME := lineage_beyond2lte
PRODUCT_DEVICE := beyond2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G975F
PRODUCT_MANUFACTURER := samsung

# Maintainter
PRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=jas7o
    
PRODUCT_GMS_CLIENTID_BASE := android-samsung
