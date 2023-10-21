#!/bin/bash

. device/friendlyelec/rk3568/base.mk

TARGET_IMAGE_DIRNAME=friendlywrt23-docker
TARGET_FRIENDLYWRT_CONFIG=rockchip-docker

TARGET_SD_RAW_FILENAME=friendlywrt-23.05-docker_$(date +%Y%m%d)_rk3568_sd.img
TARGET_EFLASHER_RAW_FILENAME=friendlywrt-23.05-docker_$(date +%Y%m%d)_rk3568_eflasher.img
