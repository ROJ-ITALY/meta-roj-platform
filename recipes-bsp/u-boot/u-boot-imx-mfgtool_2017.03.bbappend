# ROJ

DESCRIPTION = "bootloader MfgTool for smarc+enuc platform"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://0001-smarc-som-support.patch \
	file://0002-enuc-base-support.patch \
"
