FROM ubuntu
RUN apt-get update 
RUN apt-get install -y tftp-hpa
RUN apt-get install -y wget
RUN apt-get install -y unar
RUN /usr/bin/wget -O /opt/clonezilla.iso http://c3sl.dl.osdn.jp/clonezilla/67139/clonezilla-live-2.5.0-25-amd64.iso
RUN mkdir /opt/clonezilla
RUN mkdir /var/lib/tftpboot/clonezilla
RUN unar -o /var/lib/tftpboot/clonezilla /opt/clonezilla.iso live/*
RUN ls -l /var/lib/tftpboot/clonezilla
VOLUME /var/lib/tftpboot
EXPOSE 69
CMD /usr/sbin/in.tftpd --foreground --user tftp --address 0.0.0.0:69 --secure /var/lib/tftpboot


