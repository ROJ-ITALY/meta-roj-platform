DESCRIPTION = "scripts"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "git://GITLAB.roj.corp/Smarc/test-smarc.git;protocol=ssh;user=git;branch=master"
SRCREV = "${AUTOREV}"
TEST-SMARC_VERSION ?= "1.0"
PV = "${TEST-SMARC_VERSION}+${SRCPV}"

S = "${WORKDIR}/git"
RDEPENDS_${PN} += "bash"

INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
INHIBIT_PACKAGE_STRIP = "1"

#FIXME hack to fix usage of custom makefile
do_install() {
	make install DESTDIR=${D}
}

FILES_${PN} =" \
  /opt/tools \
"
