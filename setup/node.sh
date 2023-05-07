#!/bin/bash

# chrono @ 2023-05

# steps:
# 1 init.sh
# 2 prepare.sh
# 3 containerd.sh
# 4 kubeadm.sh
# 5 this script

# copy kubeadm join cmd here, with sudo
# sudo \
#kubeadm join 192.168.26.210:6443 --token fw51ym.6oxkq8y7qtvwzdsh \
#   --discovery-token-ca-cert-hash sha256:0d4357eb2560cbb517bbbfb2cf00118206bd82bf62e8ba18ef5c8ed94444f550

# get join token
# kubeadm token list
# kubeadm token create --print-join-command
# openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //'


