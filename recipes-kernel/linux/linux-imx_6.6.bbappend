FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-6.6:"
SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-dt-bindings-vendor-prefixes-Add-bytesatwork-AG.patch \
	file://0003-dt-bindings-arm-bytesatwork-Add-modules-and-boards.patch \
	file://0004-dt-bindings-vendor-prefixes-Add-youritech.patch \
	file://0005-drm-Add-youritech-ILI9806E-panel.patch \
	file://0006-dt-bindings-display-Add-Youritech-ILI9806E-panel-bin.patch \
	file://0007-video-logo-Add-bytesatwork-boot-logo.patch \
	file://0008-arm64-bytedevkit_imx93_defconfig-Add-basic-configura.patch \
	file://0009-arm64-freescale-imx93-byte-devkit-engine-.dts-i-Add-.patch \
	file://0010-arm64-dts-freescale-Add-byteDEVKIT-iMX93-to-Makefile.patch \
	file://0011-drivers-gpio-Introduce-tca6418-driver.patch \
	file://0012-arm64-freescale-imx93-byteengine.dts-Adapt-tca6418.patch \
	file://0013-arm64-bytedevkit_imx93_defconfig-Enable-tca6418-driv.patch \
"

PR = "r0"

EXTRA_OEMAKE="LOCALVERSION=-${PR}"

kernel_do_compile:prepend() {
	oe_runmake -C ${S} O=${B} ${KERNEL_DEFCONFIG}
}
