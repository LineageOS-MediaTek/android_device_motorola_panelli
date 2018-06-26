$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Assert
TARGET_OTA_ASSERT_DEVICE := panelli

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen Density
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Lights
PRODUCT_PACKAGES += \
    lights.mt6737m

# Power
PRODUCT_PACKAGES += \
    power.mt6737m

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/audio,system/vendor/etc)

# Bluetooth
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/bluetooth,system/etc/bluetooth)

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media/mtk_omx_core.cfg:system/vendor/etc/mtk_omx_core.cfg

TARGET_OMX_LEGACY_RESCALING := true

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/keylayout,system/usr/keylayout)

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/idc,system/usr/idc)

# Telephony
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/telephony,system/vendor/etc)

# Misc
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/misc,system/vendor/etc) \
    $(LOCAL_PATH)/configs/misc/clatd.conf:system/etc/clatd.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/radvd/radvd.conf:system/vendor/etc/radvd/radvd.conf

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/wide-dhcpv6,system/vendor/etc/wide-dhcpv6)

# Motorola Camera permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/com.motorola.camera.xml:system/etc/permissions/com.motorola.camera.xml \
    $(LOCAL_PATH)/configs/com.motorola.motosignature.xml:system/etc/permissions/com.motorola.motosignature.xml \
    $(LOCAL_PATH)/configs/com.motorola.cameraone.xml:system/etc/permissions/com.motorola.cameraone.xml

# Ramdisk
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/rootdir/sbin/busybox:root/sbin/busybox \
   $(LOCAL_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
   $(LOCAL_PATH)/rootdir/fstab.mt6735:root/fstab.mt6735 \
   $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
   $(LOCAL_PATH)/rootdir/init.mt6735.conn.rc:root/init.mt6735.conn.rc \
   $(LOCAL_PATH)/rootdir/init.mt6735.modem.rc:root/init.mt6735.modem.rc \
   $(LOCAL_PATH)/rootdir/init.mt6735.power.rc:root/init.mt6735.power.rc \
   $(LOCAL_PATH)/rootdir/init.mt6735.rc:root/init.mt6735.rc \
   $(LOCAL_PATH)/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
   $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
   $(LOCAL_PATH)/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc
# Thermal
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${LOCAL_PATH}/configs/thermal,system/vendor/etc/.tp)

# Dalvik heap configurations
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Common stuff
$(call inherit-product, device/mediatek/mt6737-common/mt6737.mk)

# Vendor
$(call inherit-product, vendor/motorola/panelli/panelli-vendor.mk)

