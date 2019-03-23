# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/redfin/aosp_redfin.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_redfin
PRODUCT_MODEL := Pixel 5
PRODUCT_RESTRICT_VENDOR_FILES := false
