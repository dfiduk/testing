#!/bin/sh
echo Building dfiduk/testing:build

docker build --build-arg https_proxy=$https_proxy --build-arg http_proxy=$http_proxy -t dfiduk/testing:build . -f Dockerfile.build

docker container create --name extract dfiduk/testing:build  
docker container cp extract:/go/src/github.com/alexellis/href-counter/app ./app  
docker container rm -f extract

echo Building dfiduk/testing:latest

docker build --no-cache -t dfiduk/testing:latest .
rm ./app
