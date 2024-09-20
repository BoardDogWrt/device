#!/bin/bash

. device/boarddog/rk3568/base.mk

TARGET_IMAGE_DIRNAME=boarddogwrt-docker
TARGET_BOARDDOGWRT_CONFIG=rockchip-docker

TARGET_SD_RAW_FILENAME=boarddogwrt-23.05-docker_$(date +%Y%m%d)_rk3568_sd.img
TARGET_EFLASHER_RAW_FILENAME=boarddogwrt-23.05-docker_$(date +%Y%m%d)_rk3568_eflasher.img
