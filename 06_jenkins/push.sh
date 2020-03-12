#!/bin/bash

REGISTRY=$(docker inspect registry -f '{{.NetworkSettings.IPAddress}}')
docker tag miwp -t $REGISTRY:5000/miwp
docker push $REGISTRY:5000/miwp