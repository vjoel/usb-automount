#!/bin/sh
#
# USAGE: udev-autounmounter.sh DEVICE 
#   DEVICE   is the actual device node at /dev/DEVICE
#
# This file goes in /usr/local/sbin/udev-autounmounter.sh
# Called by /etc/udev/rules.d/89-local.rules

/usr/local/sbin/udev-auto-unmount.sh ${1} &
