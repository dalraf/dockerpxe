FROM ubuntu
RUN apt-get update 
RUN apt-get install -y tftp
RUN apt-get install -y wget
RUN /usr/bin/wget -O /opt/clonezilla.iso http://c3sl.dl.osdn.jp/clonezilla/67139/clonezilla-live-2.5.0-25-amd64.iso
VOLUME /var/lib/tftpboot
EXPOSE 69
CMD /usr/sbin/in.tftpd --foreground --user tftp --address 0.0.0.0:69 --secure /var/lib/tftpboot


