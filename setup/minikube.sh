#!/bin/sh

# chrono @ 2023-05

# https://minikube.sigs.k8s.io/docs/start/

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-arm64
sudo install minikube-linux-arm64 /usr/local/bin/minikube

minikube version

minikube start --kubernetes-version=v1.27.3

# install kubectl
minikube kubectl -- version

#alias kubectl="minikube kubectl --"
#source <(kubectl completion bash)
