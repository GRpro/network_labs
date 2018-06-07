#!/bin/bash

set -e

domain=`echo $user | cut -d'@' -f 2`

[[ -z $user ]]   && echo "missing user env var" && exit -1
[[ -z $pass ]]   && echo "missing pass env var" && exit -2
[[ -z $domain ]] && echo "could not extract domain from user, prolly missing the '@'." && exit -3

echo "User:   $user"
echo "Domain: $domain"

echo $domain > /etc/mailname

# configure Postfix

echo -e "
smtpd_client_restrictions = permit_mynetworks, reject
smtpd_server_restrictions = reject_unknown_sender_domain
biff = no
append_dot_mydomain = no
recipient_delimiter = +
inet_interfaces = all
relayhost = [smtp.gmail.com]:587
smtp_sasl_auth_enable = yes
smtp_sasl_path = smtpd
smtp_sasl_password_maps = hash:/etc/postfix/saslpass
smtp_sasl_auth_enable = yes
smtp_cname_overrides_servername = no
smtp_sasl_security_options = noanonymous
smtp_tls_CApath = /etc/ssl/certs
smtp_use_tls = yes
" > /etc/postfix/main.cf

postconf -e "myhostname=$myhostname"
postconf -e "mydestination=$mydestination"
postconf -e "mynetworks=$networks"
postconf -e "alias_database=hash:/etc/aliases"
postconf -e "alias_maps=hash:/etc/aliases"


echo "[smtp.gmail.com]:587 $user:$pass" \
>> /etc/postfix/saslpass

postmap /etc/postfix/saslpass

useradd alpha
useradd beta
useradd gamma
useradd delta
useradd omega

echo -e "

srv01:          alpha
srv02:          beta
srv03:          gamma
srv04:          delta
srv05:          omega
" >> /etc/aliases

newaliases

service rsyslog start > /dev/null
service postfix start > /dev/null

sleep infinity