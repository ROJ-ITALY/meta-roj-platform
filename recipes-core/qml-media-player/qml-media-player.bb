SUMMARY = "Add QML media player on matchbox"
LICENSE = "CLOSED"

SRC_URI = "file://qml-media-player.desktop"

do_install_append() {
	install -m 0644 -D ${WORKDIR}/qml-media-player.desktop ${D}${datadir}/applications/qml-media-player.desktop
}

RDEPENDS_${PN} = "qtmultimedia-examples"
