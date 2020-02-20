#!/bin/bash

kubectl apply -f https://raw.githubusercontent.com/containous/traefik/v1.7/examples/k8s/traefik-rbac.yaml
curl -LO "https://raw.githubusercontent.com/containous/traefik/v1.7/examples/k8s/traefik-deployment.yaml"
curl -LO "https://raw.githubusercontent.com/containous/traefik/v1.7/examples/k8s/traefik-ds.yaml"
