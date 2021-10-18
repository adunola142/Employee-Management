FROM nginx:latest
MAINTAINER Adeyemi Misturah <adunola142@gmail.com

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y php-fpm
