FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-5.15:"
SRC_URI += " \
	git://github.com/nxp-imx/linux-imx;protocol=https;branch=${SRCBRANCH} \
	file://0001-drm-panel-Add-youritec-panel-driver-with-ili9806-con.patch \
	file://0002-arm64-dts-freescale-Add-byteENGINE-imx8mm-module-sup.patch \
	file://0003-arm64-dts-freescale-Add-byteDEVKIT-imx8mm-board-supp.patch \
	file://0004-video-logo-Add-bytes-at-work-logo.patch \
	file://0005-arm64-bytedevkit_imx8mm_defconfig-Add-basic-kernel-c.patch \
	file://0006-Input-goodix-do-not-configure-pin-as-input.patch \
"
SRC_URI:remove = "git://source.codeaurora.org/external/imx/linux-imx;protocol=https;branch=${SRCBRANCH}"

PR = "r0"

EXTRA_OEMAKE="LOCALVERSION=-${PR}"

kernel_do_compile:prepend() {
	oe_runmake -C ${S} O=${B} ${KERNEL_DEFCONFIG}
}
