# Customize core-image-sato for demo

# Add gstreamer1.0
IMAGE_INSTALL_append = " packagegroup-fsl-gstreamer1.0-full"

# Add aplay
IMAGE_INSTALL_append = " alsa-utils-aplay"

# Add bash and aliases
IMAGE_INSTALL_append = " bash bashrc"

# Useful utility
IMAGE_INSTALL_append = " util-linux i2c-tools pciutils iperf3 canutils ldd strace"

# Add nano editor
IMAGE_INSTALL_append = " nano"

# Add firmware sn8000 (chipset broadcom)
IMAGE_INSTALL_append = " kernel-firmware-brcmfmac43362-sdio"

# Add python3
IMAGE_INSTALL_append = " python3 python3-argparse \
			python3-subprocess \
			python3-json \
			python3-io \
			python3-shell \
			python3-datetime \
			"

# Add Qt5.8 libraries and plugins
IMAGE_INSTALL_append = " qtbase \
			qtbase-plugins \
			qtmultimedia \
			qtmultimedia-plugins \
			qtmultimedia-qmlplugins \
			qtmultimedia-examples \
			"

# Add Oracle Java
IMAGE_INSTALL_append = " oracle-jse-jre-headful "

# Add icon to run qml media player
IMAGE_INSTALL_append = " qml-media-player"

# ROOTFS type
IMAGE_FSTYPES = "tar"
