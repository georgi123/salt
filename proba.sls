base:
  'zabbix':


adding_new_user:
  user.present:
    - name: test234
      gid: 100001
      uid: 100001
      shell: /bin/bash
      home: /home/test1234
