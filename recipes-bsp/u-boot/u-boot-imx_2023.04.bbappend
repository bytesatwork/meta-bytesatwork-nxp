FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2023.04:"

LOCALVERSION = "-${SRCBRANCH}-${PR}"

# bytedevkit-imx93
SRC_URI:append:bytedevkit-imx93 = " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-board-configs-dts-bytesatwork-imx93-evk-import.patch \
	file://0003-cmd-add-cpuinfo.patch \
	file://0004-arm-dts-introduce-bytedevkit-imx93.patch \
	file://0005-configs-introduce-bytedevkit-imx93.patch \
	file://0006-include-configs-introduce-bytedevkit-imx93.patch \
	file://0007-board-bytesatwork-introduce-bytedevkit-imx93.patch \
	file://0008-arm-mach-imx-introduce-bytedevkit-imx93.patch \
"
PR:bytedevkit-imx93 = "r0"

# bytedevkit-imx8mp
SRC_URI:append:bytedevkit-imx8mp = " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-imx-add-i.MX8MP-bytesatwork-byteDEVKIT-board.patch \
	file://0003-cmd-add-cpuinfo.patch \
	file://0004-board-bytesatwork-import-bawconfig.patch \
	file://0005-bytesatwork-imx8mp-introduce-bawconfig.patch \
"
PR:bytedevkit-imx8mp = "r0"
