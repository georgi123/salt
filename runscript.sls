copy_file:
  file.managed:
    - name: /home/joro/bash/usage
      source : salt://files/usage
      user: root
      mode: 700
  cmd.run:
    - name: /home/joro/bash/usage -c 10 
