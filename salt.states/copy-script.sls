copy_my_script:
  file.managed:
    - name: /root/scripts/cluster_patch_first.node
    - source: salt://files/cluster_patch_first.node
    - user: root
    - mode: 700
copy_my_second_script:
  file.managed:
    - name: /root/scripts/start_cluster
    - source: salt://files/start_cluster 
    - user: root
    - mode: 700

