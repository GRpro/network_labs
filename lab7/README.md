# Domain names setting
You need to include
```
127.0.0.1 tulip.zone08.edu
127.0.0.1 srv-08.zone08.edu
```
lines in the **hosts** file on your machine.

# Certificates generation(requires openssl installed)
Use `generate_root_certs.sh` and `generate_app_certs.sh` scripts to generate your certificates. Then you need to include **apps/generated_certs/.pfx** and **apps/generated_certs/.pem** files in your browser certificate settings.
More at [https://medium.com/@tbusser/creating-a-browser-trusted-self-signed-ssl-certificate-2709ce43fd15](https://medium.com/@tbusser/creating-a-browser-trusted-self-signed-ssl-certificate-2709ce43fd15)

## Available sites:
[http://tulip.zone08.edu:8088](http://tulip.zone08.edu:8088)</br>
[https://tulip.zone08.edu:4431](https://tulip.zone08.edu:4431)</br>
[http://srv-08.zone08.edu:80](http://srv-08.zone08.edu:80)</br>
[https://srv-08.zone08.edu:4432](https://srv-08.zone08.edu:4432)

## Test via telnet
Use this [link](https://www.thomas-krenn.com/en/wiki/Check_TCP_Port_80_(http)_with_telnet).

## Issues
Hosts aren't properly configured: you can acess first application via [http://srv-08.zone08.edu:8088](http://srv-08.zone08.edu:8088) and vice versa.
