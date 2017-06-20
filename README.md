usb-automount
=============

Scripts to control udev automounting.

When a USB drive is attached to the system, it is mounted at `/media/auto/LABEL`, where LABEL is the volume label. This is especially useful for headless systems where there is no desktop manager to perform this function.

Install these files as noted in comments.

In addition, /media should be mounted tmpfs so that the mount points get cleared at reboot. For example:

    $ ls -l /media
    total 24K
    drwxr-xr-x  3 root root   60 Jun  9 12:45 auto/
    drwxrwxrwx  2 root root  16K Dec 31  1969 boot/
    drwxr-x---+ 2 root root 4.0K Oct  3  2016 odroid/
    drwxr-x---+ 2 root root 4.0K May  5 20:36 root/

    $ grep auto /etc/fstab
    tmpfs           /media/auto     tmpfs   mode=0755,nodev,noexec,nosuid 0 0

After inserting a USB drive (or booting with the drive attached), the drive should appear under `/media/auto`.
