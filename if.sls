{% set my_bool=false  %}
jinja_if:
 cmd.run:
 {% if my_bool %}
 - name: 'echo "It is true."'
 {% else %}
 - name: 'echo "Is it not true."'
 {% endif %}
  
