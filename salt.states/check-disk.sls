###check old sles11 disks###
###creted by GD###
check_sles11_disk: 
  file.managed: 
    - name: /root/scripts/migration/check_disk.sh
      source: "salt://files/check_disk.sh"
      user: root
      mode: '0700'
show_sles11_disk: 
  cmd.run: 
    - name: /root/scripts/migration/check_disk.sh

