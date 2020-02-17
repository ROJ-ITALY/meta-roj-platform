SUMMARY = "Install startup custom scripts and service: cpppo_install.sh"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

SRC_URI += " \
	file://COPYING.MIT \
        file://cpppo_install.sh \
	file://cpppo_install.service \
"

S = "${WORKDIR}"
RDEPENDS_${PN} = "bash"

FILES_${PN} += " \
		/home/root \
		${systemd_unitdir}/system \
"

inherit systemd

SYSTEMD_PACKAGES = "${PN}"
SYSTEMD_SERVICE_${PN} = "cpppo_install.service"

do_install () {
	install -d ${D}/home/root
	install -m 755 ${WORKDIR}/*.sh ${D}/home/root/
	install -d ${D}${systemd_unitdir}/system
	install -m 644 ${WORKDIR}/cpppo_install.service ${D}${systemd_unitdir}/system/cpppo_install.service
}
