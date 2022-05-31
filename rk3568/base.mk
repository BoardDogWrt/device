#!/bin/bash

TARGET_PLAT=rk3568
TARGET_ARCH=arm64
CROSS_COMPILER=aarch64-linux-gnu-
TARGET_OSNAME=friendlywrt

# FriendlyWRT
# 

TARGET_FRIENDLYWRT_CONFIG=rockchip
FRIENDLYWRT_SRC=friendlywrt
# FRIENDLYWRT_PATCHS+=(device/friendlyelec/rk3568/patches/0001-optimize-for-rk3568.patch)
FRIENDLYWRT_FILES+=(device/friendlyelec/rk3568/common-files)
FRIENDLYWRT_FILES+=(device/friendlyelec/rk3568/default-settings)
FRIENDLYWRT_FILES+=(device/friendlyelec/rk3568/emmc-tools)
FRIENDLYWRT_FILES+=(device/friendlyelec/rk3568/r8125)
FRIENDLYWRT_FILES+=(device/friendlyelec/rk3568/cleanup-kmods)

# U-boot
# 

TARGET_UBOOT_CONFIG=nanopi5_defconfig

# Kernel
# 

TARGET_KERNEL_CONFIG=nanopi5_linux_defconfig
TARGET_KERNEL_DTB=resource.img

# Misc
# 
FRIENDLYWRT_ROOTFS=build_dir/target-aarch64_generic_musl/root-rockchip
TARGET_IMAGE_DIRNAME=friendlywrt
TARGET_SD_RAW_FILENAME=FriendlyWrt_$(date +%Y%m%d)_RK3558_arm64_sd.img
TARGET_EFLASHER_RAW_FILENAME=FriendlyWrt_$(date +%Y%m%d)_RK3568_arm64_eflasher.img
