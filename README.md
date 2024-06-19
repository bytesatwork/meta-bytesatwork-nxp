# meta-bytesatwork-nxp


## Introduction

This is the official OpenEmbedded/Yocto BSP layer for byteDEVKIT IMX93
by [bytesatwork](https://www.bytesatwork.io/).

It is hosted on [github](https://github.com/bytesatwork/meta-bytesatwork-nxp.git).

This layer depends on:

	URI: https://git.yoctoproject.org/meta-freescale
	layer: meta-freescale
	branch: scarthgap


## BSP

This meta layer provides the Board Support Package (U-Boot and Linux kernel)
for byteDEVKIT IMX93 by bytesatwork. Simply set the variable MACHINE to
`bytedevkit-imx93` to use this BSP.

Linux Kernel recipe: linux-imx

U-Boot recipe: u-boot-imx


## SD Card

SD card images are created using *wic*. The following example shows how to create a bootable SD card
with the image `bytesatwork-minimal-image` from
[meta-bytesatwork](https://github.com/bytesatwork/meta-bytesatwork.git) from a sourced Yocto
environment:

	cd $BUILDDIR
	gunzip -c tmp/deploy/images/bytedevkit-imx93/bytesatwork-minimal-image-bytedevkit-imx93.wic.gz | dd of=/dev/sdX bs=1M && sync

or using `bmap-tools`:

	cd $BUILDDIR
	bmaptool copy tmp/deploy/images/bytedevkit-imx93/bytesatwork-minimal-image-bytedevkit-imx93.wic.bmap /dev/sdX

You can find more information on `bmap-tools` in the [Yocto Project documentation](https://docs.yoctoproject.org/5.0/dev-manual/bmaptool.html).


## Reporting bugs

Send pull requests, patches, comments or questions to yocto@bytesatwork.ch.
