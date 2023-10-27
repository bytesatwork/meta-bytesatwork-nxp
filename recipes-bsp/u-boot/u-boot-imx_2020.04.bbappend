FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2020.04:"

SRC_URI += " \
	file://0001-dts-introduce-imx8mm-bytedevkit.patch \
	file://0002-board-introduce-imx8mm-bytedevkit.patch \
	file://0003-configs-introduce-imx8mm-bytedevkit.patch \
	file://0004-cmd-cpuinfo-Add-a-basic-command-for-showing-cpu-info.patch \
	file://0005-WA-spi_nor-is25wp256-allow-only-standard-read.patch \
	file://0006-build-add-Docker-build-scripts.patch \
	file://0007-bytedevkit-add-ethernet-support.patch \
	file://0008-board-fix-default-RAM-size.patch \
	file://0009-m2config-verbatim-import.patch \
	file://0010-m2config-rename-to-baw-config.patch \
	file://0011-bawconfig-adapt-PCB-RAM-and-flash-enums-and-descript.patch \
	file://0012-bawconfig-support-imx8mm-bytedevkit.patch \
	file://0013-board-multi-dram-timings.patch \
	file://0014-board-introduce-baw-config.patch \
	file://0015-board-introduce-2GB-RAM-config.patch \
	file://0016-Create-checkpatch.yml.patch \
	file://0017-spi-fsl_fspi-implement-set-speed.patch \
	file://0018-configs-bytedevkit-enable-clock-control-increase-sf-.patch \
	file://0019-github-workflows-update-version.patch \
       	file://0020-board-bytedevkit-clean-up-dram-timing.patch \
	file://0021-board-bytesatwork-bytedevkit-bawconfig-remove.patch \
	file://0022-bytesatwork-m2config-verbatim-import.patch \
	file://0023-bytesatwork-m2config-rename-to-baw-config.patch \
	file://0024-bytesatwork-bawconfig-init-config-to-zero.patch \
	file://0025-bytesatwork-bawconfig-adapt-PCB-RAM-and-flash-enums.patch \
	file://0026-bytesatwork-bawconfig-stm32mp1-ram-fallback.patch \
	file://0027-bytesatwork-bawconfig-support-imx8mm-bytedevkit.patch \
	file://0028-bytesatwork-bawconfig-fix-build-without-EEPROM-enabl.patch \
	file://0029-bytesatwork-bawconfig-add-4-GB-as-3-GB-RAM.patch \
	file://0030-bytesatwork-bawconfig-introduce-ti-am62x-enums.patch \
	file://0031-bytesatwork-bawconfig-introduce-Makefile.patch \
	file://0032-bytesatwork-bawconfig-add-stm32mp1-ram-types.patch \
	file://0033-board-bytedevkit-use-common-baw_config.patch \
	file://0034-configs-bytedevkit-add-flash-manufacturers.patch \
	file://0035-include-configs-bytedevkit-use-default-prompt.patch \
	file://0036-ARM-dts-bytedevkit-Enable-usb-for-uuu-tool.patch \
"

PR = "r1"
LOCALVERSION = "-${SRCBRANCH}-${PR}"
