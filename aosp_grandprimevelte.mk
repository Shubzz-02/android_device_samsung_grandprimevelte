# Release name
PRODUCT_RELEASE_NAME := grandprimevelte

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/grandprimevelte/device.mk)

# Boot Ramdisk Files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/boot/root/fstab.pxa1908:root/fstab.pxa1908 \
	$(LOCAL_PATH)/boot/root/fstab_lpm.pxa1908:root/fstab_lpm.pxa1908 \
	$(LOCAL_PATH)/boot/root/init.pxa1908.rc:root/init.pxa1908.rc \
	$(LOCAL_PATH)/boot/root/init.pxa1908.security.rc:root/init.pxa1908.security.rc \
	$(LOCAL_PATH)/boot/root/init.pxa1908.sensor.rc:root/init.pxa1908.sensor.rc \
	$(LOCAL_PATH)/boot/root/init.pxa1908.tel.rc:root/init.pxa1908.tel.rc \
	$(LOCAL_PATH)/boot/root/init.pxa1908.usb.rc:root/init.pxa1908.usb.rc \
	$(LOCAL_PATH)/boot/root/init_bsp.pxa1908.rc:root/init_bsp.pxa1908.rc \
	$(LOCAL_PATH)/boot/root/init_bsp.pxa1908.tel.rc:root/init_bsp.pxa1908.tel.rc \
	$(LOCAL_PATH)/boot/root/ueventd.pxa1908.rc:root:ueventd.pxa1908.rc 

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grandprimevelte
PRODUCT_NAME := lineage_grandprimevelte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G531F
PRODUCT_MANUFACTURER := samsung
