# Copyright (C) 2024 bytesatwork AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

#@TYPE: Machine
#@NAME: byteENGINE IMX8MP
#@DESCRIPTION: byteENGINE IMX8MP by bytes at work AG

MACHINEOVERRIDES =. "mx8mp:"

require conf/machine/include/imx-base.inc
require conf/machine/include/arm/armv8a/tune-cortexa53.inc

IMX_DEFAULT_BSP = "nxp"

MACHINE_FEATURES += "pci wifi bluetooth optee"

KERNEL_IMAGETYPES = "Image"

MACHINE_USES_VIVANTE_KERNEL_DRIVER_MODULE = "1"
SPL_BINARY = "spl/u-boot-spl.bin"

# Set DDR FIRMWARE
DDR_FIRMWARE_VERSION = "202006"
DDR_FIRMWARE_NAME = " \
    lpddr4_pmu_train_1d_dmem_${DDR_FIRMWARE_VERSION}.bin \
    lpddr4_pmu_train_1d_imem_${DDR_FIRMWARE_VERSION}.bin \
    lpddr4_pmu_train_2d_dmem_${DDR_FIRMWARE_VERSION}.bin \
    lpddr4_pmu_train_2d_imem_${DDR_FIRMWARE_VERSION}.bin \
"

IMX_DEFAULT_BOOTLOADER:use-nxp-bsp = "u-boot-imx"

PREFERRED_VERSION_u-boot-imx = "2024.04"
IMAGE_BOOTLOADER = "imx-boot"
BOOT_SPACE = "65536"
LOADADDR = ""
UBOOT_MAKE_TARGET = "all"
UBOOT_SUFFIX = "bin"
UBOOT_MAKE_TARGET = ""
IMX_BOOT_SEEK = "32"

# Set serial console to uart1 (patch)
SOC_ATF_BOOT_UART_BASE:mx8m-generic-bsp = "0x30860000"
ATF_PLATFORM = "imx8mp"

OPTEE_BIN_EXT = "8mp"
TEE_LOAD_ADDR = "0x56000000"

PREFERRED_PROVIDER_virtual/kernel = "linux-imx"
PREFERRED_VERSION_linux-imx = "6.6%"
PREFERRED_PROVIDER_virtual/bootloader = "u-boot-imx"

MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += " \
	firmware-imx-epdc \
	kernel-devicetree \
	linux-firmware-imx-sdma-imx7d \
"

ATF_PLATFORM = "imx8mp"
IMX_BOOT_SOC_TARGET = "iMX8MP"
