# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common lineageos stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := panelli

PRODUCT_DEVICE := panelli
PRODUCT_NAME := lineage_panelli
PRODUCT_BRAND := motorola
PRODUCT_MODEL := panelli
PRODUCT_MANUFACTURER := panelli

# Boot animation
TARGET_SCREEN_HEIGHT      := 1280
TARGET_SCREEN_WIDTH       := 720

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US
