# ROJ

DESCRIPTION = "bootloader for roj imx6q smarc platform"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_mx6qroj = " \
	file://0001-add_support_roj_target.patch \
"

SRC_URI_append_mx6dlroj = " \
	file://0001-add_support_roj_target.patch \
"

SRC_URI_append_mx6sroj = " \
	file://0001-add_support_roj_target.patch \
"
