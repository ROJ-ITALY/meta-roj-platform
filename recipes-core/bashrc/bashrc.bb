SUMMARY = ".bashrc setup"
DESCRIPTION = ".bashrc setup"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

SRC_URI += "\
            file://profile \
            file://bashrc \
            file://COPYING.MIT \
           "

S = "${WORKDIR}"

do_install () {
	install -d ${D}/home/root
	install -m 755 ${S}/profile ${D}/home/root/.profile
	install -m 755 ${S}/bashrc ${D}/home/root/.bashrc
}

FILES_${PN} += "/home/root"

