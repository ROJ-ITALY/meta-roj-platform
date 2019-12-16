#!/bin/bash

#------------------------------------------------------------------------------
#	function message
#------------------------------------------------------------------------------
function message
{
	echo "- $1"
}

#------------------------------------------------------------------------------
#	function error
#------------------------------------------------------------------------------
function error
{
	echo "ERROR $1"

	echo $PRINTK_BACKUP > /proc/sys/kernel/printk

	# exit from script
	exit $1
}

#------------------------------------------------------------------------------
#	function success
#------------------------------------------------------------------------------
function success
{
	echo "OK"

	echo $PRINTK_BACKUP > /proc/sys/kernel/printk

	# exit from script
	exit 0
}

#------------------------------------------------------------------------------
#	main script
#------------------------------------------------------------------------------

# list errors
ERROR_INVALIDARGS=1
ERROR_NONROOT=2
ERROR_IFUP=3
ERROR_SSIDNOTFOUND=4
ERROR_STARTSUPPLICANT=5
ERROR_DHCP=6

# backup printk (kernel messages)
PRINTK_BACKUP=$(cat /proc/sys/kernel/printk)

# check to be root user
ROOT_UID=0
if [ "$UID" -ne "$ROOT_UID" ]
then
	error $ERROR_NONROOT
fi

# args
IF=wlan1
SSID=
PSK=
QUIET=1

while getopts "i:s:p:q:" o
do
	case "$o"
	in
		i)	IF=$OPTARG
			;;
		s)	SSID=$OPTARG
			;;
		p)	PSK=$OPTARG
			;;
		q)	QUIET=$OPTARG
			;;
		\?)
			error $ERROR_INVALIDARGS
			;;
	esac
done

if [ $QUIET ]
then
	echo 0 > /proc/sys/kernel/printk
fi

# active interface 'wlan1'
message "$IF up"
if ! ip link set $IF up
then
	error $ERROR_IFUP
fi

# test SSID
message "scan"
i=3
while ! iw dev $IF scan | grep -q "SSID: $SSID"
do
	if [ $i == 0 ]
	then
		error $ERROR_SSIDNOTFOUND
	else	
		i=$((i - 1))
		sleep 1
	fi
done

# connect to SSID
message "start wpa_supplicant"
wpa_passphrase ${SSID} ${PSK} > /tmp/wpa_supplicant.conf
if ! wpa_supplicant -B -D nl80211 -i $IF -c /tmp/wpa_supplicant.conf -C /var/run/wpa_supplicant > /dev/null
then
	error $ERROR_STARTSUPPLICANT
fi

# Acquire IP address to DHCP server
message "udhcpc"
if ! udhcpc -q -i $IF > /dev/null
then
	error $ERROR_DHCP
fi

success
