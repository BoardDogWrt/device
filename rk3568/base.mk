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
FRIENDLYWRT_FILES+=(device/friendlyelec/rk3568/distfeeds)

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
FRIENDLYWRT_PACKAGE_DIR=bin/targets/rockchip/armv8/packages
TARGET_IMAGE_DIRNAME=friendlywrt21
TARGET_SD_RAW_FILENAME=friendlywrt_21.02_$(date +%Y%m%d)_rk3568_arm64_sd.img
TARGET_EFLASHER_RAW_FILENAME=friendlywrt_21.02_$(date +%Y%m%d)_rk3568_arm64_eflasher.img
