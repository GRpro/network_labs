FROM bitnami/apache:latest

RUN mkdir /usr/apache
RUN mkdir -p /usr/home/web
RUN mkdir -p /usr/passwords

RUN /opt/bitnami/apache/bin/htpasswd -b -c /usr/passwords/.passwd jupiter jupiter
RUN /opt/bitnami/apache/bin/htpasswd -b /usr/passwords/.passwd mercury mercury
