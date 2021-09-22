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

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=redfin \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210905.001 7511028 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210905.001/7511028:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_SOONG_NAMESPACES += vendor/google_devices/redfin
