#!/usr/bin/env bash

docker-compose kill
docker rm $(docker ps -a -q)
docker rmi --force $(docker images -q)