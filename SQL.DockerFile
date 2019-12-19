FROM mysql:5.7.25
# Expose the SQL port so the web server can access it
EXPOSE 3306
# Copy the database file across into the container. Container will automatically execute the files stored in this directory on start
COPY database.sql /docker-entrypoint-initdb.d/
# As this is a dev enviroment for prototyping and demonstration purposes, disabling password entires
ENV MYSQL_ALLOW_EMPTY_PASSWORD='yes'