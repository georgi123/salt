####created by GD####

--- 
copy_backup_dir: 
  file.directory: 
    - 
      name: /tmp/backup
      sourse: "salt://files/migration/backup"
      user: root
copy_file: 
  file.managed: 
    - 
      mode: "700"
      name: /tmp/HPOA_12.06_Linux_64_v1.tar.gz
      source: "salt://files/migration/HPOA_12.06_Linux_64_v1.tar.gz"
      user: root
copy_file1: 
  file.managed: 
    - 
      mode: "700"
      name: /root/scripts/after_boot.sh
      source: "salt://files/migration/after_boot.sh"
      user: root
copy_file2: 
  file.managed: 
    - 
      mode: "700"
      name: /root/scripts/sles11to12
      source: "salt://files/migration/sles11to12"
      user: root
copy_file3: 
  file.managed: 
    - 
      mode: "700"
      name: /root/scripts/unregister.pl
      source: "salt://files/migration/unregister.pl"
      user: root

