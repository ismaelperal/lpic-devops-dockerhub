#!/bin/bash

# Install Jenkins
## Replace external IP values accordingly
## Requires a trafik deployed in 04_gke
kubectl create namespace jenkins
helm upgrade jenkins stable/jenkins --namespace jenkins --values values.yaml --install
