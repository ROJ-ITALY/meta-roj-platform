# roj-image-qt5-fb-imx6q demo image

require qt5-custom-common.inc

TOUCH = ' ${@base_contains("MACHINE_FEATURES", "touchscreen", "tslib tslib-calibrate tslib-tests", "",d)}'

IMAGE_INSTALL = " \
    ${COMMON_INSTALL} \
    ${TOUCH} \
	packagegroup-qt5-base \
    packagegroup-qt5-fonts \
    packagegroup-qt5-graphics \
    packagegroup-qt5-web \
    packagegroup-qt5-extra \
	packagegroup-fsl-gstreamer1.0-full \
	qtmultimedia-examples \
    cinematicexperience \
    i2c-tools \
	canutils \
	pciutils \
	strace \
	ldd \
	imx-gst1.0-plugin \
	imx-gst1.0-plugin-gplay \
	kernel-firmware-brcmfmac43362-sdio \
	bash \
	bashrc \
	v4l-utils \
	imx-vpu \
	imx-gpu-viv \
	test-smarc \
	spitools \
"
