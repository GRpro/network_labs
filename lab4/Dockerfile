# debian-based container for vsftpd
# VERSION               0.3
FROM debian:jessie
MAINTAINER Davide Lucchesi  "davide@lucchesi.nl"

RUN apt-get update && apt-get install -y --no-install-recommends vsftpd
RUN apt-get install -y ftp
RUN apt-get clean

#RUN echo "local_enable=YES" >> /etc/vsftpd.conf
#RUN echo "chroot_local_user=YES" >> /etc/vsftpd.conf
#RUN echo "write_enable=YES" >> /etc/vsftpd.conf
#RUN echo "local_umask=022" >> /etc/vsftpd.conf
#RUN sed -i "s/anonymous_enable=YES/anonymous_enable=NO/" /etc/vsftpd.conf

RUN mkdir -p /var/run/vsftpd/empty

RUN mkdir -p /var/ftp/pub
RUN mkdir -p /var/ftp/incoming

# add users

RUN adduser tiger --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
RUN echo "tiger:tiger" | chpasswd

RUN adduser lion --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
RUN echo "lion:lion" | chpasswd

RUN adduser lynx --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
RUN echo "lynx:lynx" | chpasswd

RUN adduser leopard --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
RUN echo "leopard:leopard" | chpasswd

RUN adduser jaguar --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
RUN echo "jaguar:jaguar" | chpasswd


VOLUME /etc

EXPOSE 21

CMD /usr/sbin/vsftpd
