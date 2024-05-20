# shellcheck shell=bash

export BOARD_NAME="ROCK 5C"
export BOARD_MAKER="Radxa"
export UBOOT_PACKAGE="u-boot-radxa-rk3588"
export UBOOT_RULES_TARGET="rock-5c-rk3588s"
export UBOOT_RULES_TARGET_EXTRA="rock-5a-spi-rk3588s"

function config_image_hook__rock-5c() {
    local rootfs="$1"
    local overlay="$2"
    #fix bootloader
    sudo mkdir -p "${rootfs}/tmp"
    sudo cp u-boot* "${rootfs}/tmp"
    sudo cp linux-image* "${rootfs}/tmp"
    sudo cp linux-headers* "${rootfs}/tmp"
    chroot "${rootfs}" dpkg -i "${rootfs}/tmp/linux-image*"
    chroot "${rootfs}" dpkg -i "${rootfs}/tmp/u-boot*"
    chroot "${rootfs}" dpkg -i "${rootfs}/tmp/linux-headers*"

    return 0
}
