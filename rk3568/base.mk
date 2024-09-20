#!/bin/bash

TARGET_PLAT=rk3568
TARGET_ARCH=arm64
CROSS_COMPILER=aarch64-linux-gnu-
TARGET_OSNAME=boarddogwrt

# BoardDogWrt
# 

TARGET_FRIENDLYWRT_CONFIG=rockchip
FRIENDLYWRT_SRC=boarddogwrt
FRIENDLYWRT_PATCHS+=("feeds/luci/;device/common/src-patchs/23.05/feeds/luci")
FRIENDLYWRT_FILES+=(device/common/ntfs3)
FRIENDLYWRT_FILES+=(device/common/uas)
FRIENDLYWRT_FILES+=(device/common/nft-fullcone)
FRIENDLYWRT_FILES+=(device/common/emmc-tools)
FRIENDLYWRT_FILES+=(device/common/distfeeds)
FRIENDLYWRT_FILES+=(device/common/default-settings)
FRIENDLYWRT_FILES+=(device/boarddog/rk3568/r8125)

# U-boot
# 

TARGET_UBOOT_CONFIG=nanopi5_defconfig

# Kernel
# 

TARGET_KERNEL_CONFIG="nanopi5_linux_defconfig friendlywrt.config"
TARGET_KERNEL_DTB=resource.img

# Misc
# 
FRIENDLYWRT_ROOTFS=build_dir/target-aarch64_generic_musl/root-rockchip
FRIENDLYWRT_PACKAGE_DIR=bin/targets/rockchip/armv8/packages
TARGET_IMAGE_DIRNAME=boarddogwrt
TARGET_SD_RAW_FILENAME=boarddogwrt_23.05_$(date +%Y%m%d)_rk3568_arm64_sd.img
TARGET_EFLASHER_RAW_FILENAME=boarddogwrt_23.05_$(date +%Y%m%d)_rk3568_arm64_eflasher.img
