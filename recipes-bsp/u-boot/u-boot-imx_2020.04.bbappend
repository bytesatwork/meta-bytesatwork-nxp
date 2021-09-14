FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-2020.04:"

SRC_URI += " \
	file://0001-dts-introduce-imx8mm-bytedevkit.patch \
	file://0002-board-introduce-imx8mm-bytedevkit.patch \
	file://0003-configs-introduce-imx8mm-bytedevkit.patch \
	file://0004-cmd-cpuinfo-Add-a-basic-command-for-showing-cpu-info.patch \
	file://0005-WA-spi_nor-is25wp256-allow-only-standard-read.patch \
	file://0006-build-add-Docker-build-scripts.patch \
	file://0007-bytedevkit-add-ethernet-support.patch \
"
