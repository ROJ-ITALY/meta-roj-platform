# Custom core-image-minimal for smarc+enuc (demokit)

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

# Add test-smarc
IMAGE_INSTALL_append = " test-smarc"

# Add python3
IMAGE_INSTALL_append = " python3 python3-argparse \
			python3-subprocess \
			python3-json \
			python3-io \
			python3-shell \
			python3-datetime \
			"

# Rootfs on tar
IMAGE_FSTYPES = "tar"


