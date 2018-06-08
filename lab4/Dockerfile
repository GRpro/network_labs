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


# add anon user

RUN mkdir -p /home/anon
RUN chmod 755 /home/anon
RUN mkdir -p /home/anon/pub
RUN chmod o+r /home/anon/pub

RUN mkdir -p /home/anon/incoming
RUN chmod o+rw /home/anon/incoming

RUN mkdir -p /var/run/vsftpd/empty

# add users

RUN adduser mercury --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
RUN echo "mercury:mercury" | chpasswd

RUN adduser venus --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
RUN echo "venus:venus" | chpasswd

RUN adduser earth --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
RUN echo "earth:earth" | chpasswd

RUN adduser saturn --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
RUN echo "saturn:saturn" | chpasswd

RUN adduser jupiter --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
RUN echo "jupiter:jupiter" | chpasswd

VOLUME /etc

EXPOSE 21 20

CMD chown root:root /etc/vsftpd.*
CMD /usr/sbin/vsftpd
#CMD sleep 5000

