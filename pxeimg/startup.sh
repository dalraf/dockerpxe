#!/bin/bash
sed -i "s/pxeipaddress/$SERVIDORPXE" /var/lib/tftpboot/pxelinux.cfg/default 
/usr/sbin/in.tftpd -L --user root -a 0.0.0.0:69 -s -B1468 -v /var/lib/tftpboot
