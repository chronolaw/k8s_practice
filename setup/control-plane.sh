#!/bin/bash

# chrono @ 2023-05

# https://kubernetes.io/zh/docs/reference/setup-tools/kubeadm/kubeadm-init/

# steps:
# 1 init.sh
# 2 prepare.sh
# 3 containerd.sh
# 4 kubeadm.sh
# 5 this script
# 6 network.sh

# init k8s cluster
sudo kubeadm init \
    --apiserver-advertise-address=192.168.26.210 \
    --pod-network-cidr=10.10.0.0/16 \
    --image-repository registry.aliyuncs.com/google_containers \
    --kubernetes-version=v1.27.3 \
    --v=5

# enable kubectl
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# check
kubectl version
kubectl get node

# check images
#sudo ctr -n k8s.io images ls
#sudo ctr -n k8s.io images ls | awk '{print $1}'

#kubeadm join 192.168.26.210:6443 --token fw51ym.6oxkq8y7qtvwzdsh \
#   --discovery-token-ca-cert-hash sha256:0d4357eb2560cbb517bbbfb2cf00118206bd82bf62e8ba18ef5c8ed94444f550

# get join token
# kubeadm token list
# kubeadm token create --print-join-command
# openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //'
