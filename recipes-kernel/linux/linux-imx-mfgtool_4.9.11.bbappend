# ROJ

DESCRIPTION = "kernel MfgTool for smarc+enuc platform"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"


SRC_URI_append = " \
	file://0001-dts-smarc-som.patch \
	file://0002-dts-enuc.patch \
"
