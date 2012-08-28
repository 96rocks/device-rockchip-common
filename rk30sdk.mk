# The rockchip rk30sdk board
include device/rockchip/rk30sdk/BoardConfig.mk
ifeq ($(strip $(BOARD_WITH_CALL_FUNCTION)), true)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
else
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
endif
$(call inherit-product, device/rockchip/rk30sdk/device.mk)

PRODUCT_BRAND := rk30sdk
PRODUCT_DEVICE := rk30sdk
PRODUCT_NAME := rk30sdk
PRODUCT_MODEL := rk30sdk
PRODUCT_MANUFACTURER := rockchip

PRODUCT_PROPERTY_OVERRIDES += \
			ro.product.version = 1.0.0 \
			ro.product.ota.host = www.rockchip.com:2300
