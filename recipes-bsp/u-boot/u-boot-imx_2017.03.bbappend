# ROJ

DESCRIPTION = "bootloader for smarc+enuc platform"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://0001-smarc-som-support.patch \
	file://0002-enuc-base-support.patch \
	file://0003-video-mode-settings.patch \
	file://0004-fixed-eth-init.patch \
	file://0005-disable_blankscreen_console.patch \
	file://0006-disable_cursor_blink.patch \
	file://0007-fix-cpld-init.patch \
	file://0008-fix-usb-hub-init.patch \
"
