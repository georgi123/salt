#####createted by GD########
####purpose is to 
####  show both 
####  machine-id's
{% set name = grains['id'] %}
{% if grains['type'] == 'SAP' %}

show_etc_machine_id:
  cmd.run:
    - name: cat /etc/machine-id 
      order: 2 

show_var_machine_id:
  cmd.run:
    - name: cat /var/lib/dbus/machine-id
      order: 1
 {% endif %}

jinja_grains:
  cmd.run:
    - name: echo 'My name is {{ name }}'
show_server_hostname:
  cmd.run:
    - name: cat /etc/*release | head -1

