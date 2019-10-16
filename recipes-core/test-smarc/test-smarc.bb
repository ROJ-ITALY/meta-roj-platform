DESCRIPTION = "scripts to test smarc module"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "git://github.com/ROJ-ITALY/test-smarc.git;protocol=https;branch=master"
SRCREV = "${AUTOREV}"

PVBASE := "${PV}"
PV = "${PVBASE}.git${SRCPV}"

S = "${WORKDIR}/git"
RDEPENDS_test-smarc = "bash python3-core"

INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
INHIBIT_PACKAGE_STRIP = "1"

#FIXME hack to fix usage of custom makefile
do_install() {
	make install DESTDIR=${D}
}

FILES_${PN} =" \
  /opt/tools \
"
