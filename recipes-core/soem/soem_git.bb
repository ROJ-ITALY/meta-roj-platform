DESCRIPTION = "SOEM EtherCAT Master Library"
LICENSE = "CLOSED"

inherit cmake

SRC_URI = "git://github.com/OpenEtherCATsociety/SOEM.git;protocol=https;branch=master"
SRCREV = "${AUTOREV}"
PV = "1.4.0+gitr${SRCPV}"

S = "${WORKDIR}/git"
