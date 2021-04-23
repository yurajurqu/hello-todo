#!/bin/sh
mvn clean package && docker build -t barboza.pastrana/hello-todo .
docker rm -f hello-todo || true && docker run -d -p 8080:8080 -p 4848:4848 --name hello-todo barboza.pastrana/hello-todo 
