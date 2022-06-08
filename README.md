meta-bytesatwork-nxp
================================


Introduction
-------------------------
This is the official OpenEmbedded/Yocto BSP layer for byteDEVKIT IMX8MM by [bytes at
work AG](https://www.bytesatwork.io/).

It is hosted on [github](https://github.com/bytesatwork/meta-bytesatwork-nxp.git).

This layer depends on:

	URI: https://git.yoctoproject.org/meta-freescale
	layer: meta-freescale
	branch: kirkstone


BSP
-------------------------
This meta layer provides the Board Support Package (U-Boot and Linux kernel)
for "byteDEVKIT IMX8MM" by bytes at work AG. Simply set the variable MACHINE to
"bytedevkit-imx8mm" to use this BSP.

Linux Kernel recipe: linux-imx

U-Boot recipe: u-boot-imx


SD Card
-------------------------
SD card images are created using *wic*.
The following example shows how to create a bootable SD card with the image
`bytesatwork-minimal-image` from
[meta-bytesatwork](https://github.com/bytesatwork/meta-bytesatwork.git) from a
sourced Yocto environment:

	cd $BUILDDIR
	gunzip -c tmp/deploy/images/bytedevkit-imx8mm/bytesatwork-minimal-image-bytedevkit-imx8mm.wic.gz | dd of=/dev/sdX bs=1M && sync

or using `bmap-tools`:

	cd $BUILDDIR
	bmaptool copy tmp/deploy/images/bytedevkit-imx8mm/bytesatwork-minimal-image-bytedevkit-imx8mm.wic.bmap /dev/sdX

You can find more information on `bmap-tools` in the [Yocto Project documentation](https://docs.yoctoproject.org/3.1.14/dev-manual/dev-manual-common-tasks.html#flashing-images-using-bmaptool).


Reporting bugs
-------------------------
Send pull requests, patches, comments or questions to yocto@bytesatwork.ch
