usb-automount
=============

scritps to control udev automounting

install these files as noted in comments

in addition, /media should be mounted tmpfs so that the mount points get cleared at reboot

for example:

$ ls -l /media
total 24K
drwxr-xr-x  3 root root   60 Jun  9 12:45 auto/
drwxrwxrwx  2 root root  16K Dec 31  1969 boot/
drwxr-x---+ 2 root root 4.0K Oct  3  2016 odroid/
drwxr-x---+ 2 root root 4.0K May  5 20:36 root/

$ grep auto /etc/fstab
tmpfs           /media/auto     tmpfs   mode=0755,nodev,noexec,nosuid 0 0

