# shellcheck shell=bash

export BOARD_NAME="ROCK 5A"
export BOARD_MAKER="Radxa"
export UBOOT_PACKAGE="u-boot-radxa-rk3588"
export UBOOT_RULES_TARGET="rock-5c-rk3588s"
export UBOOT_RULES_TARGET_EXTRA="rock-5a-spi-rk3588s"

function config_image_hook__rock-5a() {
    local rootfs="$1"
    local overlay="$2"

    return 0
}
