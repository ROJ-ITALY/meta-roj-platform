# ROJ

DESCRIPTION = "bootloader for smarc+enuc platform"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://0001-smarc-som-support.patch \
	file://0002-enuc-base-support.patch \
	file://0003-video-mode-settings.patch \
	file://0004-disable_blankscreen_console.patch \
	file://0005-disable_cursor_blink.patch \
	file://0006-hdmi-on-mxcfb0.patch \
"
