FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = "\
    file://0002-disable-StartLimitIntervalSec.patch \
"
