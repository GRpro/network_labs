FTP cli commands
================
Cheat sheet:
https://kb.globalscape.com/KnowledgebaseArticle10407.aspx


Things are tested from within a container because 
it was quite hard to find correct ports to host machine :

Start
=====
`docker-compose up -d`

Login
=====
login into "host" container 
`ftp ftp1 21`
enter username
enter password


Anonymous login
===============
login into "host" container 
`ftp ftp1 21`
enter anonymous
