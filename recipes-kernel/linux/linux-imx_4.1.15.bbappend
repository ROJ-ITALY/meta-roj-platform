# ROJ

DESCRIPTION = "kernel for roj imx6q and imx6s smarc platform"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"


SRC_URI_append_mx6qroj = " \
   file://0001-add-roj-dts.patch \
   file://0002-ltc3676.patch \
   file://0003-hdmi-patches.patch \
   file://0004-fix-usb-errors.patch \
   file://0005-i210.patch \
   file://defconfig \
"

SRC_URI_append_mx6sroj = " \
   file://0001-add-roj-dts.patch \
   file://0002-ltc3676.patch \
   file://0003-hdmi-patches.patch \
   file://0004-fix-usb-errors.patch \
   file://0005-i210.patch \
   file://remove-cma-region-imx6s.patch \
   file://defconfig \
"

