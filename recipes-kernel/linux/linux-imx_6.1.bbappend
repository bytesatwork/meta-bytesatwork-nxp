FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-6.1:"

EXTRA_OEMAKE="LOCALVERSION=-${PR}"

KBUILD_DEFCONFIG:bytedevkit-imx8mp=""

# bytedevkit-imx8mp
SRC_URI:append:bytedevkit-imx8mp = " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-dt-bindings-vendor-prefixes-Add-bytesatwork-AG.patch \
	file://0003-dt-bindings-arm-bytesatwork-Add-modules-and-boards.patch \
	file://0004-drm-imx-imx-ldb-Add-168Mhz-LDB-clock-to-drive-24-Mhz.patch \
	file://0005-video-logo-Add-bytesatwork-boot-logo.patch \
	file://0006-arm64-bytedevkit_imx8mp_defconfig-Add-a-basic-config.patch \
	file://0007-arm64-freescale-imx8mp-byte-devkit-engine-.dts-i-Add.patch \
	file://0008-arch-arm64-config-add-defconfig-for-byteDEVKIT3.patch \
	file://0009-arch-arm64-dts-add-dts-for-byteDEVKIT3.patch \
	file://0010-arch-arm64-dts-fix-touch-lvds-for-byteDEVKIT3.patch \
	file://0011-arm64-bytedevkit_imx8mp_defconfig-Fix-sdma-and-802.1.patch \
	file://0012-arm64-dts-imx8mp-bytedevkit-Fix-initial-state-of-USB.patch \
	file://defconfig \
"
PR:bytedevkit-imx8mp = "r1"

# bytedevkit-imx8mm
SRC_URI:append:bytedevkit-imx8mm = " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-dt-bindings-Add-various-vendor-prefixes-and-devices.patch \
	file://0003-drm-Add-youritech-ILI9806E-panel.patch \
	file://0004-arm64-Add-byteENGINE-imx8mm-module-and-byteDEVKIT-im.patch \
	file://0005-Input-goodix-do-not-configure-pin-as-input.patch \
	file://0006-video-logo-Add-bytesatwork-logo.patch \
"
PR:bytedevkit-imx8mm = "r0"
