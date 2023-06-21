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
"
