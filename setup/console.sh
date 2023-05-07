#!/bin/sh

# chrono @ 2023-05

curl -LO https://dl.k8s.io/release/v1.27.3/bin/linux/arm64/kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

mkdir -p $HOME/.kube
scp chrono@192.168.26.210:~/.kube/config ~/.kube/config

# add to `.bashrc`
#source <(kubectl completion bash)
#out="--dry-run=client -o yaml"
