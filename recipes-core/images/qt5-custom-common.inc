SYSTEMD_INSTALL = " \
    systemd \
    systemd-compat-units \
    systemd-speed-hacks \
    udev-systemd \
    rsyslog-systemd \
"

SYSV_INSTALL = " \
    udev \
	udev-extraconf \
    sysvinit \
    initscripts \
"

COMMON_INSTALL = " \
    base-files \
    base-passwd \
    busybox \
    ${@base_contains("MACHINE_FEATURES", "systemd", "${SYSTEMD_INSTALL}", "${SYSV_INSTALL}", d)} \
    packagegroup-base \
"

IMAGE_FEATURES += "package-management ssh-server-openssh splash"

inherit core-image
