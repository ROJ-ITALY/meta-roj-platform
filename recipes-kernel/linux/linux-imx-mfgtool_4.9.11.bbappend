# ROJ

DESCRIPTION = "kernel MfgTool for smarc+enuc platform"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

DO_CONFIG_V7_COPY_mx6 = "no"

SRC_URI_append = " \
	file://0001-dts-smarc-som.patch \
	file://0002-dts-enuc.patch \
	file://defconfig \
"
