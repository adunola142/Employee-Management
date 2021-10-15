FROM ubuntu:18.04
MAINTAINER Adeyemi Misturah <adunola142@gmail.com>

#Update Repository
RUN apt-get update -y

#Install Apache
RUN apt-get install -y apache2

RUN apt-get install software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update

#Install PHP Modules
RUN apt-get install -y php7.3 libapache2-mod-php7.3 php7.3-cli php7.3-common php7.3-mbstring php7.3-gd php7.3-intl php7.3-xml php7.3-mysql php7.3-mcrypt php7.3-zip

#Copy Application Files
RUN rm -rf /var/www/html/*
ADD dockerize-php-sample /var/www/html

#Configure Apache (Optional)
RUN chown -R www-data:www-data /var/www
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

#Open port 80
EXPOSE 80

#Start Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"] 
