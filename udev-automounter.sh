#!/bin/sh
#
# USAGE: usb-automounter.sh DEVICE 
#   DEVICE   is the actual device node at /dev/DEVICE
#
# This file goes in /usr/local/sbin/udev-automounter.sh
# Called by /etc/udev/rules.d/89-local.rules

/usr/local/sbin/udev-auto-mount.sh ${1} &
