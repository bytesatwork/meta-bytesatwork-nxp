FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2023.04:"

SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-board-configs-dts-bytesatwork-imx93-evk-import.patch \
	file://0003-cmd-add-cpuinfo.patch \
	file://0004-arm-dts-introduce-bytedevkit-imx93.patch \
	file://0005-configs-introduce-bytedevkit-imx93.patch \
	file://0006-include-configs-introduce-bytedevkit-imx93.patch \
	file://0007-board-bytesatwork-introduce-bytedevkit-imx93.patch \
	file://0008-arm-mach-imx-introduce-bytedevkit-imx93.patch \
"

PR = "r0"
LOCALVERSION = "-${SRCBRANCH}-${PR}"
