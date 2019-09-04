{% set my_name = 'patka' %}
{% set list= ['kochina', 'koshara', 'obor'] %}
#Hi {{ my_name }}

jinja_var:
  cmd.run:
  - name: echo "my name is {{ my_name }}" 
  - order: 2

jinja_list:
  cmd.run:
  - name: echo "ly list is {{ list }}"
  - order: 1
