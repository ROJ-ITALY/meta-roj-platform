DESCRIPTION = "SOEM EtherCAT Master Library"
LICENSE = "CLOSED"

inherit cmake

SRC_URI = "git://github.com/OpenEtherCATsociety/SOEM.git;protocol=https;branch=master \
		   file://0001-wam-ecat-test.patch \
		   file://eeprom_ax58100.bin"


SRCREV = "${AUTOREV}"
PV = "1.4.0+gitr${SRCPV}"

S = "${WORKDIR}/git"

do_install_append () {
	install -d ${D}/home/root
	install -m 755 ${WORKDIR}/eeprom_ax58100.bin ${D}/home/root/eeprom_ax58100.bin
}

FILES_${PN} += " /home/root"
