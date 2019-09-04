  hosts: Backup
  name: create user
  user: name=rdpmon state=present gid=1000 uid=1000 shell=/bin/bash home=/home/rdpmon

