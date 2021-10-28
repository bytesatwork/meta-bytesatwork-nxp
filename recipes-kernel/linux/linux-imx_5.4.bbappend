FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-5.4:"
SRC_URI += " \
	file://0001-mfd-pca9450-Fix-linker-issue.patch \
	file://0002-drm-panel-Add-youritec-panel-driver-with-ili9806-con.patch \
	file://0003-arm64-dts-freescale-Add-byteENGINE-imx8mm-module-sup.patch \
	file://0004-arm64-dts-freescale-Add-byteDEVKIT-imx8mm-board-supp.patch \
	file://0005-arm64-bytedevkit_imx8mm_defconfig-Add-basic-kernel-c.patch \
	file://0006-video-logo-add-bytes-at-work-logo.patch \
	file://0007-arm64-bytedevkit_imx8mm_defconfig-Enable-custom-boot.patch \
	file://0008-mtd-spi-nor-Add-support-for-is25wp256.patch \
	file://0009-arm64-dts-freescale-imx8mm-byteengine-Fix-PMIC-int.patch \
"

PR ??= "r0"

EXTRA_OEMAKE="LOCALVERSION=-${PR}"

kernel_do_compile_prepend() {
	oe_runmake -C ${S} O=${B} ${KERNEL_DEFCONFIG}
}
