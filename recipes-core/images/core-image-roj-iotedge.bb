# Custom image for Azure IoT Edge

require recipes-core/images/core-image-roj.bb

# Useful utility
IMAGE_INSTALL_append = " psmisc procps"

# Add Docker packages
IMAGE_INSTALL_append = " docker docker-contrib ca-certificates"

# Add Entropy Daemon
IMAGE_INSTALL_append = " haveged"
