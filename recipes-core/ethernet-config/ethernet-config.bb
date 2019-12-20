SUMMARY = "ethernet configuration"
DESCRIPTION = "Install network configuration."
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

SRC_URI = " file://eth2.network \
            file://COPYING.MIT \
           "

S = "${WORKDIR}"

do_install () {
    install -d ${D}${sysconfdir}/systemd/network
    install -m 644 ${S}/eth2.network ${D}${sysconfdir}/systemd/network
}
