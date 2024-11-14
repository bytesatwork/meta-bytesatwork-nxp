FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2024.04:"

LOCALVERSION = "-${SRCBRANCH}-${PR}"

# bytedevkit-imx8mm
SRC_URI:append:bytedevkit-imx8mm = " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-cmd-add-cpuinfo.patch \
	file://0003-imx-add-i.MX8MM-bytesatwork-byteDEVKIT-board.patch \
	file://0004-board-bytesatwork-import-bawconfig.patch \
	file://0005-bytesatwork-imx8mm-introduce-bawconfig.patch \
	file://0006-mtd-spi-nor-ids-is25wp256-allow-only-standard-read.patch \
"
PR:bytedevkit-imx8mm = "r0"
