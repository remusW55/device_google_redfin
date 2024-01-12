# Inherit some common stuff.
$(call inherit-product, vendor/404/configs/common.mk)

# Device specific overlay
DEVICE_PACKAGE_OVERLAYS += device/google/redfin/overlay-calyx

# Inherit device configuration
$(call inherit-product, device/google/redfin/device-calyx.mk)
$(call inherit-product, device/google/redbull/device-calyx.mk)
$(call inherit-product, device/google/redfin/aosp_redfin.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := p404_redfin
PRODUCT_MODEL := Pixel 5
PRODUCT_BRAND := google

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=redfin \
    PRIVATE_BUILD_DESC="redfin-user 14 UP1A.231105.001 10817346 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:14/UP1A.231105.001/10817346:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/redfin/redfin-vendor.mk)
