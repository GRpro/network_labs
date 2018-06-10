# There are 3 containers
host1 - NFS server
host2 client allowed to mount both `/usr/share (rw)` and `/usr/public (ro)`
host3 client allowed to mount `/usr/public (ro)`


# Mount example
create dir on client `dir`
`mount -t nfs  host1:/usr/share dir/`
try to read existing files (ro permission) and create new files (rw permission)

