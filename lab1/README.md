####Deploy DNS servers
docker-compose up -d

####Check first DNS
nslookup -port=54 alpha.zone05.net localhost

####Check second DNS
nslookup -port=53 alpha.zone05.net localhost

####Stop DNS servers
docker-compose stop