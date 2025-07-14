FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2024.04:"

LOCALVERSION = "-${SRCBRANCH}-${PR}"

SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-cmd-Add-cpuinfo.patch \
	file://0003-board-bytesatwork-Import-bawconfig.patch \
	file://0004-imx-Add-i.MX93-bytesatwork-byteDEVKIT-board.patch \
	file://0005-bytesatwork-imx93-Introduce-bawconfig.patch \
	file://0006-imx-Add-i.MX8MP-bytesatwork-byteDEVKIT-board.patch \
	file://0007-bytesatwork-imx8mp-Introduce-bawconfig.patch \
	file://0008-imx-Add-i.MX8MM-bytesatwork-byteDEVKIT-board.patch \
	file://0009-bytesatwork-imx8mm-Introduce-bawconfig.patch \
	file://0010-mtd-spi-nor-ids-is25wp256-allow-only-standard-read.patch \
"

PR = "r0"
