# ROJ

DESCRIPTION = "kernel for smarc+enuc platform"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

DO_CONFIG_V7_COPY_mx6 = "no"

SRC_URI_append = " \
	file://0001-dts-smarc-som.patch \
	file://0002-dts-enuc.patch \
	file://0003-i210-support.patch \
	file://0004-add-sn8000-support.patch \
	file://0005-spi-flash-support.patch \
	file://brcmfmac43362-sdio.bin \
	file://brcmfmac43362-sdio.txt \
	"
SRC_URI_append_imx6qenuc = " \
	file://defconfig \
	"

SRC_URI_append_imx6soloenuc = " \
	file://defconfig \
	"

do_install_append () {
	install -d ${D}/lib/firmware/brcm/
	install -m 0644 ${WORKDIR}/brcmfmac43362-sdio.bin ${D}/lib/firmware/brcm/
	install -m 0644 ${WORKDIR}/brcmfmac43362-sdio.txt ${D}/lib/firmware/brcm/
}

FILES_kernel-firmware-brcmfmac43362-sdio += "/lib/firmware/brcm/"
