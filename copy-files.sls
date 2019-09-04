copy_first_file:
  file.managed:
    - name: /tmp/usage
    - source: salt://files/usage
    - user: joro
    - group: joro
    - mode: 0600
    - backup: minion
