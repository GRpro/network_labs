####Deploy DNS servers
docker-compose up -d

####Check first DNS
nslookup -port=54 rose.zone05.net localhost

####Check second DNS
nslookup -port=53 rose.zone08.net localhost

####Stop DNS servers
docker-compose stop