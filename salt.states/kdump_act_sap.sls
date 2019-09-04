{% if grains['type'] == 'sap' %}
backup_etc_default_grub:
  file.copy:
    - source: /etc/default/grub
    - name: /etc/default/grub.back
    - preserve: True
    - remove_existing: True
backup_boot_grub2_grubcfg:
  file.copy:
    - source: /boot/grub2/grub.cfg
    - name: /boot/grub2/grub.cfg.back
    - preserve: True
    - remove_existing: True
{% endif %}

{% if not salt['cmd.shell']('grep crashkernel /etc/default/grub ')  %}
add_crash_kernel_stanza:
  file.replace:
    - name: /etc/default/grub
    - pattern: 'GRUB_CMDLINE_LINUX_DEFAULT="'
    - repl:  'GRUB_CMDLINE_LINUX_DEFAULT="crashkernel=512M-2G:256M,2G-4G:512M,4G-32G:512M,32G-:768M '
    - failhard: True

update_grub_cfg:
  cmd.run:
    - name: grub2-mkconfig -o /boot/grub2/grub.cfg

service_kdump_enable:
  service.enabled:
    - name: kdump
{% endif %}
check_grub_conf:
  cmd.run:
    - name: grep GRUB_CMDLINE_LINUX_DEFAULT /etc/default/grub
