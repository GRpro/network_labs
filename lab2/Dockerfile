
FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y telnet
RUN apt-get install -y mailutils
RUN echo "postfix postfix/mailname string gmail.com" | debconf-set-selections
RUN echo "postfix postfix/main_mailer_type string 'Internet Site'" | debconf-set-selections
RUN apt-get install -y postfix

ADD mail.sh /mail.sh
RUN chmod +x /mail.sh

EXPOSE 25
EXPOSE 465
EXPOSE 587

ENTRYPOINT ["/mail.sh"]