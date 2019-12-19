FROM mysql:5.7.25
EXPOSE 3306
COPY database.sql /docker-entrypoint-initdb.d/
ENV MYSQL_ALLOW_EMPTY_PASSWORD='yes'