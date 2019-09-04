run_ip_check:
  cmd.run:
    - name: /sbin/ip a 
    - order: 2
run_second:
  cmd.run:
    - name: /sbin/ip r
    - order: 1
