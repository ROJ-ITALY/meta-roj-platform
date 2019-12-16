SUMMARY = "Install net custom scripts: wifi_on.sh, ..."
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

SRC_URI += " \
        file://COPYING.MIT \
        file://wifi_on.sh \
"

S = "${WORKDIR}"
RDEPENDS_${PN} = "bash"

FILES_${PN} += " /home/root"

do_install () {
	install -d ${D}/home/root
	install -m 755 ${WORKDIR}/*.sh ${D}/home/root/
}
