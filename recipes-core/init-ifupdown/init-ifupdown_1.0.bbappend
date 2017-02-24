#setup interfaces

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
		file://setup_interfaces.patch \
		"

