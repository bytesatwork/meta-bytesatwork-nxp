FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2024.04:"

LOCALVERSION = "-${SRCBRANCH}-${PR}"

SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-CI-Add-action-to-analyze-patches.patch \
	file://0003-cmd-Add-cpuinfo.patch \
	file://0004-board-bytesatwork-Import-bawconfig.patch \
	file://0005-imx-Add-i.MX93-bytesatwork-byteDEVKIT-board.patch \
	file://0006-bytesatwork-imx93-Introduce-bawconfig.patch \
	file://0007-imx-Add-i.MX8MP-bytesatwork-byteDEVKIT-board.patch \
	file://0008-bytesatwork-imx8mp-Introduce-bawconfig.patch \
	file://0009-imx-Add-i.MX8MM-bytesatwork-byteDEVKIT-board.patch \
	file://0010-bytesatwork-imx8mm-Introduce-bawconfig.patch \
	file://0011-mtd-spi-nor-ids-is25wp256-allow-only-standard-read.patch \
	file://0012-configs-imx93_bytedevkit-Add-password.patch \
	file://0013-configs-imx8mp_bytedevkit-Add-password.patch \
	file://0014-configs-imx8mm_bytedevkit-Add-password.patch \
"

PR = "r2"
