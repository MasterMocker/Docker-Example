FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y apache2
RUN apt-get install -y php php-mysql
CMD ["apachectl","-D","FOREGROUND"]
RUN a2enmod rewrite
COPY index.php /var/www/html/
COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 80
