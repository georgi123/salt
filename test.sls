test_user:
  user.present:
    - name: test123
    - home: /home/joro/pwd
    - shell: /bin/ksh
    - uid: 10000
    - gid: 10000 
