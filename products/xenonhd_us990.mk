# Inherit from us990 device
$(call inherit-product, device/lge/us990/full_us990.mk)

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
PRODUCT_DEVICE := us990
PRODUCT_NAME := xenonhd_us990
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-US990
PRODUCT_MANUFACTURER := LGE

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Enable Torch
PRODUCT_PACKAGES += Torch

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_usc_us" \
    BUILD_FINGERPRINT="lge/g3_usc_us/g3:4.4.2/KVT49L.US99010c/US99010c.1412218894:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_usc_us-user 4.4.2 KVT49L.US99010c US99010c.1412218894 release-keys"
