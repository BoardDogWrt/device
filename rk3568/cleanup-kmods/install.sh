#!/bin/bash
set -eu
ROOTFS_DIR=$1

function cleanup_kmods()
{
    local LIST=${TOP_DIR}/device/friendlyelec/rk3568/cleanup-kmods/modules-cleanup.list
    local MDIR=etc/modules

    mkdir -p etc/modules-boot.d-removed
    rm -rf etc/modules-boot.d-removed/*
    mkdir -p etc/modules.d-removed
    rm -rf etc/modules.d-removed/*

    [ -f "${LIST}" ] || return 0
    for f in $(cat ${LIST}); do
        [ -L ${MDIR}-boot.d/$f ] && mv ${MDIR}-boot.d/$f etc/modules-boot.d-removed/
        [ -f ${MDIR}.d/$f ]      && mv ${MDIR}.d/$f etc/modules.d-removed/
    done	
}

(cd ${ROOTFS_DIR} && {
    cleanup_kmods
})
