# Steps
1. enable in your gmail account less secure apps https://myaccount.google.com/lesssecureapps
2. set gmail `user` and `pass` in a docker-compose.yml
3. run `docker-compose up -d`
4. run `docker exec -it lab2_host_1`
5. Send email via Telnet example 
```
root@zone05:/# telnet localhost 25
Trying 127.0.0.1...
Connected to localhost.
Escape character is '^]'.
220 zone05.net ESMTP Postfix
HELO host
250 zone05.net
MAIL FROM: <user>@gmail.com
250 2.1.0 Ok
RCPT TO: <some_user>@gmail.com
250 2.1.5 Ok
DATA
354 End data with <CR><LF>.<CR><LF>
Email body
.
250 2.0.0 Ok: queued as 65BC53006DD
quit
221 2.0.0 Bye
Connection closed by foreign host.
root@zone05:/# 
```

To send mail to local user you have to create it first!

## In case you wanna see logs
cat /var/log/mail.log

