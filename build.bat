docker build . -t project_picard:webserver_0.1
docker container run --publish 8080:22 --name webserver --rm project_picard:webserver_0.1