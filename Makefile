all:
	bitbake core-image-minimal


.PHONY: update-sdcard
update-sdcard:
	bzip2 -dfk tmp-glibc/deploy/images/raspberrypi5/core-image-minimal-raspberrypi5.rootfs.wic.bz2
	sudo dd if=tmp-glibc/deploy/images/raspberrypi5/core-image-minimal-raspberrypi5.rootfs.wic of=$(DEV) bs=1M
