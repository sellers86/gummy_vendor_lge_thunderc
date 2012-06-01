KERNEL_MODULES_DIR := /system/lib/modules
TINY_TOOLBOX := true
WITH_WINDOWS_MEDIA := true
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1  \

# Audio
PRODUCT_PACKAGES += \
    audio_policy.thunderc \
    audio.primary.thunderc \
    audio.a2dp.default \
    libaudioutils \

# Tiny alsa 
PRODUCT_PACKAGES += libtinyalsa  
PRODUCT_PACKAGES += tinyplay  
PRODUCT_PACKAGES += tinycap 
PRODUCT_PACKAGES += tinymix 
	
# Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer \
    libopencorehw \
    gralloc.msm7x27 \
    copybit.msm7x27 \
    hwcomposer.msm7x27 \
    camera.thunderc  \
    dexpreopt
	
# QCOM OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore \
    libdivxdrmdecrypt \
    libmm-omxcore

# Misc
PRODUCT_PACKAGES += \
    lights.thunderc \
    sensors.thunderc \
    com.android.future.usb.accessory \
    gps.thunderc \
    hwaddrs \
    hcitool \
    hciconfig \
    lgapversion \
    bdaddr_read

PRODUCT_PACKAGES += \
    libjni_latinime \
    librs_jni \
    brcm_patchram_plus \
    bash \
    nano \
    flash_image \
    erase_image \
    dump_image \
    thunderc_keypad.kcm.bin

PRODUCT_PACKAGES += \
    Provision \
    GoogleSearch \
    LatinIME \
    QuickSearchBox \
    FileManager
	
    
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/init.rc:root/init.rc \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/ueventd.rc:root/ueventd.rc \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/gps.conf:system/etc/gps.conf \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/hosts:system/etc/hosts \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/init.d:system/etc/init.d \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/loc_parameter.ini:system/etc/loc_parameter.ini \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/wiperconfig.xml:system/etc/wiperconfig.xml \
    vendor/lge/thunderc/proprietary/$(SUB_MODEL)/system/etc/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml

