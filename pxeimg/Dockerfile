FROM ubuntu
RUN apt-get update 
RUN apt-get install -y tftp-hpa
RUN apt-get install -y wget
RUN apt-get install -y unar
RUN /usr/bin/wget -O /opt/clonezilla.iso http://c3sl.dl.osdn.jp/clonezilla/67139/clonezilla-live-2.5.0-25-amd64.iso
RUN mkdir /opt/clonezilla
RUN mkdir /var/lib/tftpboot
RUN mkdir /var/lib/tftpboot/clonezilla
RUN mkdir /var/lib/tftpboot/pxelinux.cfg
RUN unar -D -o /opt/clonezilla /opt/clonezilla.iso live/*
RUN cp /opt/clonezilla/live/* /var/lib/tftpboot/clonezilla
RUN apt-get install -y pxelinux
RUN cp /usr/lib/PXELINUX/pxelinux.0 /var/lib/tftpboot
RUN cp /usr/lib/syslinux/modules/bios/menu.c32 /var/lib/tftpboot
ADD default /var/lib/tftpboot/pxelinux.cfg
RUN find /var/lib/tftpboot
VOLUME /var/lib/tftpboot
EXPOSE 69
CMD /usr/sbin/in.tftpd --foreground --user tftp --address 0.0.0.0:69 --secure /var/lib/tftpboot


