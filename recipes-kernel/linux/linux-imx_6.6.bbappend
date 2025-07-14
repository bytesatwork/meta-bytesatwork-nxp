FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-6.6:"

SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-dt-bindings-vendor-prefixes-Add-bytesatwork-AG.patch \
	file://0003-dt-bindings-arm-bytesatwork-Add-modules-and-boards.patch \
	file://0004-dt-bindings-vendor-prefixes-Add-youritech.patch \
	file://0005-drm-Add-youritech-ILI9806E-panel.patch \
	file://0006-dt-bindings-display-Add-Youritech-ILI9806E-panel-bin.patch \
	file://0007-drivers-gpio-Introduce-tca6418-driver.patch \
	file://0008-arm64-bytedevkit_imx93_defconfig-Add-basic-configura.patch \
	file://0009-arm64-freescale-imx93-byte-devkit-engine-.dts-i-Add-.patch \
	file://0010-drm-imx-imx-ldb-Add-168Mhz-LDB-clock-to-drive-24-Mhz.patch \
	file://0011-arm64-bytedevkit_imx8mp_defconfig-Add-a-basic-config.patch \
	file://0012-arm64-freescale-imx8mp-byte-devkit-engine-.dts-i-Add.patch \
	file://0013-Input-goodix-do-not-configure-pin-as-input.patch \
	file://0014-drivers-gpu-drm-Adapt-for-byteENGINE-IMX8MM.patch \
	file://0015-arm64-bytedevkit_imx8mm_defconfig-Add-a-basic-config.patch \
	file://0016-arm64-freescale-imx8mm-byte-devkit-engine-.dts-i-Add.patch \
	file://0017-netfilter-nf_reject_ipv6-fix-nf_reject_ip6_tcphdr_pu.patch \
	file://0018-arm64-freescale-imx93-bytedevkit.dts-fix-usb.patch \
"

PR = "r0"

EXTRA_OEMAKE="LOCALVERSION=-${PR}"

kernel_do_compile:prepend() {
	oe_runmake -C ${S} O=${B} ${KERNEL_DEFCONFIG}
}
