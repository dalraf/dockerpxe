FROM ubuntu
RUN apt-get update 
RUN apt-get install -y tftp
VOLUME /var/lib/tftpboot
EXPOSE 69
CMD /usr/sbin/in.tftpd --foreground --user tftp --address 0.0.0.0:69 --secure /var/lib/tftpboot


