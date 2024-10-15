# Copyright (C) 2024 bytesatwork AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

#@TYPE: Machine
#@NAME: byteENGINE IMX8MM
#@DESCRIPTION: byteENGINE IMX8MM by bytesatwork AG

MACHINEOVERRIDES =. "mx8:mx8m:mx8mm:"

require conf/machine/include/imx-base.inc
require conf/machine/include/arm/armv8a/tune-cortexa53.inc

IMX_DEFAULT_BSP = "nxp"
IMX_DEFAULT_BOOTLOADER:use-nxp-bsp = "u-boot-imx"

MACHINE_FEATURES += "pci wifi bluetooth optee"

KERNEL_IMAGETYPES = "Image"

MACHINE_USES_VIVANTE_KERNEL_DRIVER_MODULE = "1"
SPL_BINARY = "spl/u-boot-spl.bin"

# Set DDR FIRMWARE
DDR_FIRMWARE_NAME = "lpddr4_pmu_train_1d_imem.bin lpddr4_pmu_train_1d_dmem.bin lpddr4_pmu_train_2d_imem.bin lpddr4_pmu_train_2d_dmem.bin"

PREFERRED_VERSION_u-boot-imx = "2024.04"
IMAGE_BOOTLOADER = "imx-boot"
BOOT_SPACE = "65536"
LOADADDR = ""
UBOOT_SUFFIX = "bin"
UBOOT_MAKE_TARGET = ""
IMX_BOOT_SEEK = "33"

OPTEE_BIN_EXT = "8mm"

PREFERRED_PROVIDER_virtual/kernel = "linux-imx"
PREFERRED_VERSION_linux-imx = "6.1%"
PREFERRED_PROVIDER_virtual/bootloader = "u-boot-imx"

MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += " \
	firmware-imx-epdc \
	kernel-devicetree \
	linux-firmware-imx-sdma-imx7d \
"

ATF_PLATFORM = "imx8mm"
IMX_BOOT_SOC_TARGET = "iMX8MM"
