# ROJ

DESCRIPTION = "kernel for Roj Demokit (smarc+enuc platform)"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Override LOCALVERSION variable by NXP recipe (fixed problem ipk)
LOCALVERSION = "-1.0.0"

SRC_URI_append = " \
	file://0001-dts-smarc-som.patch \
	file://0002-dts-enuc.patch \
	file://0003-i210-support.patch \
	file://0004-add-sn8000-support.patch \
	file://0005-spi-flash-support.patch \
	file://brcmfmac43362-sdio.bin \
	file://brcmfmac43362-sdio.txt \
	file://rt2870.bin \
	"

SRC_URI_append_imx6qenuc = " \
	file://defconfig \
	"

SRC_URI_append_imx6soloenuc = " \
	file://defconfig \
	"

# Using custom kernel configuration
deltask copy_defconfig

do_install_append () {
	install -d ${D}${base_libdir}/firmware/brcm/
	install -m 0644 ${WORKDIR}/brcmfmac43362-sdio.bin ${D}${base_libdir}/firmware/brcm/
	install -m 0644 ${WORKDIR}/brcmfmac43362-sdio.txt ${D}${base_libdir}/firmware/brcm/
	install -m 0644 ${WORKDIR}/rt2870.bin ${D}${base_libdir}/firmware/
}

FILES_kernel-firmware-brcmfmac43362-sdio += "${base_libdir}/firmware/brcm/"
FILES_kernel-firmware-rt2870 += "${base_libdir}/firmware/"
