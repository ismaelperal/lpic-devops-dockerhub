#!/bin/bash

kubectl apply -f https://raw.githubusercontent.com/containous/traefik/v1.7/examples/k8s/traefik-rbac.yaml

# Download yamls
# curl -LO "https://raw.githubusercontent.com/containous/traefik/v1.7/examples/k8s/traefik-ds.yaml"
# curl -LO https://raw.githubusercontent.com/containous/traefik/v1.7/examples/k8s/ui.yaml
# curl -LO https://raw.githubusercontent.com/containous/traefik/v1.7/examples/k8s/cheese-deployments.yaml
# curl -LO https://raw.githubusercontent.com/containous/traefik/v1.7/examples/k8s/cheese-services.yaml
# curl -LO https://raw.githubusercontent.com/containous/traefik/v1.7/examples/k8s/cheese-ingress.yaml
# 

kubectl apply -f ./
