#!/bin/bash

# Deploy cluster
gcloud beta container \
--project "iperal-kubernetes" \
clusters create "lpic-devops" \
--zone "europe-west1-d" \ 
--no-enable-basic-auth \
--cluster-version "1.15.9-gke.9" \
--machine-type "n1-standard-1" \
--image-type "COS" \
--disk-type "pd-standard" \
--disk-size "30" \
--metadata disable-legacy-endpoints=true \
--scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" --num-nodes "3" --no-enable-stackdriver-kubernetes --enable-ip-alias --network "projects/iperal-kubernetes/global/networks/default" \ 
--subnetwork "projects/iperal-kubernetes/regions/europe-west1/subnetworks/default" \
--enable-intra-node-visibility \
--default-max-pods-per-node "110" \ 
--addons HorizontalPodAutoscaling,HttpLoadBalancing \
--enable-autoupgrade \
--enable-autorepairnetwork "projects/iperal-kubernetes/regions/europe-west1/subnetworks/default" \
--enable-intra-node-visibility \
--default-max-pods-per-node "110" \
--a

# Install Helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

helm repo add stable https://kubernetes-charts.storage.googleapis.com

# Buy IP

# Edit Values

# Install Traefik
helm install traefik-ingress  stable/traefik --namespace kube-system --values traefik/values.yaml
