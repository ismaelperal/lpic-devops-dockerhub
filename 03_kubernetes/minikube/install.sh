#!/bin/bash

# Install VirtualBox
sudo apt install virtualbox

# Install Minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv ./minikube /usr/local/bin/

# Install Kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/

# Add autocomplete
echo "source <(kubectl completion bash)" >> $HOME/.bashrc
source $HOME/.bashrc
