# Inherit from d855 device
$(call inherit-product, device/lge/f400/full_f400.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Telephony
$(call inherit-product, vendor/xenonhd/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/xenonhd/configs/nfc_enhanced.mk)

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Copy specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/xenonhd/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/xenonhd/products/common_drm.mk

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := f400
PRODUCT_NAME := xenonhd_f400
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-F400
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_DEVICE="g3" \
   PRODUCT_NAME="g3_kt_kr" \
   BUILD_FINGERPRINT="lge/g3_kt_kr/g3:5.0/LRX21R/F400K20f.1419232865:user/release-keys" \
   PRIVATE_BUILD_DESC="g3_kt_kr-user 5.0 LRX21R F400K20f.1419232865 release-keys"

