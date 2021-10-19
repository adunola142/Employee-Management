## Create an nginx container
FOR CONTEXT:

> Your docker compose should contain something similar:

```
  nginx:    
      build: ./nginx/  
      container_name: nginx-container  
      ports:  
       - 80:80  
      links:  
       - php  
      volumes_from:  
       - app-data  

     php:    
      build: ./php/  
      container_name: php-container  
      expose:  
       - 9000  
      links:  
       - mysql  
      volumes_from:  
       - app-data  

     app-data:    
      image: php:7.0-fpm  
      container_name: app-data-container  
      volumes:  
       - ./www/html/:/var/www/html/  
      command: "true"  

     mysql:    
      image: mysql:5.7  
      container_name: mysql-container  
      volumes_from:  
       - mysql-data  
      environment:  
       MYSQL_ROOT_PASSWORD: secret  
       MYSQL_DATABASE: mydb  
       MYSQL_USER: myuser  
       MYSQL_PASSWORD: password  

     mysql-data:    
      image: mysql:5.7  
      container_name: mysql-data-container  
      volumes:  
       - /var/lib/mysql  
      command: "true" 
```

[For more information](https://www.atlantic.net/vps-hosting/how-to-deploy-a-php-application-with-nginx-and-mysql-using-docker-and-docker-compose/)