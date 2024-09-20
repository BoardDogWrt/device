#!/bin/bash

TARGET_PLAT=rk3568
TARGET_ARCH=arm64
CROSS_COMPILER=aarch64-linux-gnu-
TARGET_OSNAME=boarddogwrt

# BoardDogWrt
# 

TARGET_BOARDDOGWRT_CONFIG=rockchip
BOARDDOGWRT_SRC=boarddogwrt
BOARDDOGWRT_PATCHS+=("feeds/luci/;device/common/src-patchs/23.05/feeds/luci")
BOARDDOGWRT_FILES+=(device/common/ntfs3)
BOARDDOGWRT_FILES+=(device/common/uas)
BOARDDOGWRT_FILES+=(device/common/nft-fullcone)
BOARDDOGWRT_FILES+=(device/common/emmc-tools)
BOARDDOGWRT_FILES+=(device/common/distfeeds)
BOARDDOGWRT_FILES+=(device/common/default-settings)
BOARDDOGWRT_FILES+=(device/boarddog/rk3568/r8125)

# U-boot
# 

TARGET_UBOOT_CONFIG=nanopi5_defconfig

# Kernel
# 

TARGET_KERNEL_CONFIG="nanopi5_linux_defconfig friendlywrt.config"
TARGET_KERNEL_DTB=resource.img

# Misc
# 
BOARDDOGWRT_ROOTFS=build_dir/target-aarch64_generic_musl/root-rockchip
BOARDDOGWRT_PACKAGE_DIR=bin/targets/rockchip/armv8/packages
TARGET_IMAGE_DIRNAME=boarddogwrt
TARGET_SD_RAW_FILENAME=boarddogwrt_23.05_$(date +%Y%m%d)_rk3568_arm64_sd.img
TARGET_EFLASHER_RAW_FILENAME=boarddogwrt_23.05_$(date +%Y%m%d)_rk3568_arm64_eflasher.img
