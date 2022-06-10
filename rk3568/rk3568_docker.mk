#!/bin/bash

. device/friendlyelec/rk3568/base.mk

TARGET_IMAGE_DIRNAME=friendlywrt21-docker
TARGET_FRIENDLYWRT_CONFIG=rockchip-docker

TARGET_SD_RAW_FILENAME=FriendlyWrt21-Docker_$(date +%Y%m%d)_RK3568_sd.img
TARGET_EFLASHER_RAW_FILENAME=FriendlyWrt21-Docker_$(date +%Y%m%d)_RK3568_eflasher.img
