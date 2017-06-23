# ROJ

DESCRIPTION = "kernel for roj imx6q and imx6s smarc platform"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"


SRC_URI_append_mx6qroj = " \
   file://0001-add-roj-dts.patch \
   file://0002-ltc3676.patch \
   file://0003-hdmi-patches.patch \
   file://0004-fix-usb-errors.patch \
   file://0005-i210.patch \
   file://0006-add-sn8000-support.patch \
   file://0007-sdio_pwr_en_on.patch \
   file://0008-add_delay_wifi_regulator.patch \
   file://0009-change_strength_usdhc4.patch \
   file://brcmfmac43362-sdio.bin \
   file://brcmfmac43362-sdio.txt \
   file://defconfig \
"

SRC_URI_append_mx6sroj = " \
   file://0001-add-roj-dts.patch \
   file://0002-ltc3676.patch \
   file://0003-hdmi-patches.patch \
   file://0004-fix-usb-errors.patch \
   file://0005-i210.patch \
   file://0006-add-sn8000-support.patch \
   file://0007-sdio_pwr_en_on.patch \
   file://0008-add_delay_wifi_regulator.patch \
   file://0009-change_strength_usdhc4.patch \
   file://remove-cma-region-imx6s.patch \
   file://brcmfmac43362-sdio.bin \
   file://brcmfmac43362-sdio.txt \
   file://defconfig \
"
do_install_append () {
	install -d ${D}/lib/firmware/brcm/
	install -m 0644 ${WORKDIR}/brcmfmac43362-sdio.bin ${D}/lib/firmware/brcm/
	install -m 0644 ${WORKDIR}/brcmfmac43362-sdio.txt ${D}/lib/firmware/brcm/
}

FILES_kernel-firmware-brcmfmac43362-sdio += "/lib/firmware/brcm/"
