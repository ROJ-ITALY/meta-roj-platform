SUMMARY = "Add the version number to the image"
LICENSE = "CLOSED"

do_install () {
    # Create directory
    install -d ${D}/home/root

    # Write image version to file
    echo "y2.2-r1.0" > ${D}/home/root/image_version
    chmod 644 ${D}/home/root/image_version
}

FILES_${PN} = " /home/root/image_version"
