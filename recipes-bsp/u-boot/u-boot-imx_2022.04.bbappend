FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2022.04:"

SRCREV = "7376547b9e424b2d0f42dfe96394168c781ca297"

SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-configs-introduce-imx8mp-bytedevkit.patch \
	file://0003-board-imx8mp_bytedevkit-initial-structure.patch \
	file://0004-dts-imx8mp_bytedevkit-initial-structure.patch \
	file://0005-include-configs-imx8mp_bytedevkit-initial-structure.patch \
	file://0006-m7-support-for-uart1-mmcboot-and-4GB-RAM-on-bytedevk.patch \
	file://0007-m7-set-sdcard-to-mmc2.patch \
	file://0008-board-dts-configs-removed-unused-parts.patch \
	file://0009-cmd-add-cpuinfo.patch \
	file://0010-configs-imx8mp_bytedevkit-Add-cpuinfo-and-meminfo-co.patch \
	file://0011-board-bytesatwork-import-bawconfig.patch \
	file://0012-bytesatwork-imx8mp-introduce-bawconfig.patch \
	file://0013-bytesatwork-imx8mp-prepare-dynamic-ram-config.patch \
"

PR = "r0"
LOCALVERSION = "-${SRCBRANCH}-${PR}"
