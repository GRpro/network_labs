# There are 3 containers
host1 - NFS server
host2 client allowed to mount both `/usr/local/share (rw)` and `/usr/local/appl (ro)`
host3 client allowed to mount `/usr/local/appl (ro)`


# Mount example
create dir on client `dir`
`mount -t nfs  host1:/usr/local/share dir/`
try to read existing files (ro permission) and create new files (rw permission)

