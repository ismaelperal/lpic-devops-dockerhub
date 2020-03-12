#!/bin/bash

docker run -d miwp 
curl http://$(docker inspect $(docker ps -ql) -f '{{.NetworkSettings.IPAddress}}') &>/dev/null
ERROR=$?
docker rm -f $(docker ps -ql)
exit $ERROR
