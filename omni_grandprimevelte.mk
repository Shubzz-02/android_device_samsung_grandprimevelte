# Release name
PRODUCT_RELEASE_NAME := grandprimevelte

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/grandprimevelte/device.mk)

# Time Zone Data
PRODUCT_COPY_FILES += \
bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab
PRODUCT_COPY_FILES += $(LOCAL_PATH)/poweroff.sh:recovery/root/sbin/poweroff.sh

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grandprimevelte
PRODUCT_NAME := omni_grandprimevelte
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-G531F
PRODUCT_MANUFACTURER := samsung
