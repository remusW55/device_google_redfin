# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Device specific overlay
DEVICE_PACKAGE_OVERLAYS += device/google/redfin/overlay-calyx

# Inherit device configuration
$(call inherit-product, device/google/redfin/device-calyx.mk)
$(call inherit-product, device/google/redbull/device-calyx.mk)
$(call inherit-product, device/google/redfin/aosp_redfin.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_redfin
PRODUCT_MODEL := Pixel 5
PRODUCT_BRAND := google

PRODUCT_RESTRICT_VENDOR_FILES := false
