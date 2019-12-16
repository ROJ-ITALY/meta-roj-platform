# Custom core-image-minimal for smarc+enuc (demokit)

require recipes-core/images/core-image-minimal.bb

# Add bash and aliases
IMAGE_INSTALL_append = " bash bashrc"

# Add kernel modules
IMAGE_INSTALL_append = " kernel-modules"

# Useful utility
IMAGE_INSTALL_append = " util-linux i2c-tools pciutils iperf3 canutils ldd strace"

# Add nano editor
IMAGE_INSTALL_append = " nano"

# Add firmware sn8000 (chipset broadcom)
IMAGE_INSTALL_append = " kernel-firmware-brcmfmac43362-sdio"

# Add firmware rt2870 (chipset ralink)
IMAGE_INSTALL_append = " kernel-firmware-rt2870"

# Add firmware sdma-imx6q.bin
IMAGE_INSTALL_append = " firmware-imx-sdma"

# Add test-smarc
IMAGE_INSTALL_append = " test-smarc"

# Add wireless-regdb
IMAGE_INSTALL_append = " wireless-regdb-static"

# Add image version
IMAGE_INSTALL_append = " image-version"

# Add python3
IMAGE_INSTALL_append = " python3 \
			python3-json \
			python3-io \
			python3-shell \
			python3-datetime \
			"

# Add usbutils for lsusb
IMAGE_INSTALL_append = " usbutils"

# Add iw utility
IMAGE_INSTALL_append = " iw"

# Add wpa-supplicant utility
IMAGE_INSTALL_append = " wpa-supplicant"

# Add net custom scripts
IMAGE_INSTALL_append = " net-scripts"

# Rootfs on tar
IMAGE_FSTYPES = "tar"
