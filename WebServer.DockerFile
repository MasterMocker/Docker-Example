FROM ubuntu:latest

#Update the OS and other applications 
RUN apt-get update -y
RUN apt-get upgrade -y

#Install apache
RUN apt-get install -y apache2

#Install php and the mysql module 
RUN apt-get install -y php php-mysql

# Start apache on load of the container
CMD ["apachectl","-D","FOREGROUND"]

# Update mod list to make sure PHP is enabled 
RUN a2enmod rewrite

# Copy site files into the container for use 
COPY index.php /var/www/html/
COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf

# Expose port 80, docker to handle port 8080 mapping
EXPOSE 80