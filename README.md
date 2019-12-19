# Project-Picard
This project is a simple example of a XAMP development enviroment build using docker.
It stands up a Apache and PHP server with the mysql php module installed.
It also stands up and initalises a mysql container for use with the web container.
### Pre-requisites:

- Docker
- Docker Compose
- Internet Connection

### Instructions for use
Follow these instructions for setting up this sample application:

1. Run the following command within the cloned repo
```
docker-compose up -d
```
2. Navigate to localhost on either port 80 or 8080
3. Enjoy the simple server
4. Run the following command to pull down the application
```
docker-compose down
```	