install package:
 pkg.installed:
  - name: apache2
  
check if service apache is running:
 service.running:
    - name: apache2
    - enable: True  

 
