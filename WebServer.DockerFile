FROM ubuntu:latest

#Update timezone
ENV TZ=Australia/Melbourne
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#RUN echo "Australia/Melbourne" | tee /etc/timezone
#RUN dpkg-reconfigure --frontend noninteractive tzdata

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
COPY index.html /var/www/html/
COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf
COPY quote.php /var/www/html/
COPY main.js /var/www/html/

# Expose port 80, docker to handle port 8080 mapping
EXPOSE 80