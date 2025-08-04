# Copyright (C) 2024 bytesatwork AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

#@TYPE: Machine
#@NAME: byteENGINE IMX93
#@DESCRIPTION: byteENGINE IMX93 by bytesatwork AG

MACHINEOVERRIDES =. "mx93:"

require conf/machine/include/imx-base.inc
require conf/machine/include/arm/armv8-2a/tune-cortexa55.inc

MACHINE_FEATURES += "pci wifi bluetooth"
MACHINE_FEATURES:append:use-nxp-bsp = " optee jailhouse nxpiw612-sdio"

IMX_DEFAULT_BOOTLOADER:use-nxp-bsp = "u-boot-imx"

PREFERRED_VERSION_u-boot-imx = "2024.04"
IMAGE_BOOTLOADER = "imx-boot"
LOADADDR = ""
UBOOT_SUFFIX = "bin"
UBOOT_MAKE_TARGET = ""

SPL_BINARY = "spl/u-boot-spl.bin"

ATF_PLATFORM = "imx93"

IMX_BOOT_SOC_TARGET = "iMX9"
IMX_BOOT_SEEK = "32"

IMX_DEFAULT_BSP = "nxp"

PREFERRED_PROVIDER_virtual/kernel = "linux-imx"
PREFERRED_VERSION_linux-imx = "6.6%"
IMAGE_INSTALL:append = " kernel-devicetree"

UBOOT_CONFIG_BASENAME = "imx93_bytedevkit"

DDR_FIRMWARE_NAME = " \
    lpddr4_dmem_1d_v202201.bin \
    lpddr4_dmem_2d_v202201.bin \
    lpddr4_imem_1d_v202201.bin \
    lpddr4_imem_2d_v202201.bin \
"
