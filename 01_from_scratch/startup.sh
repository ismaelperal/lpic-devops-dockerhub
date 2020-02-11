#!/bin/bash

docker network create -d overlay proxy
docker stack deploy -c traefik.yaml traefik
docker stack deploy -c docker-compose.yaml wordpress
