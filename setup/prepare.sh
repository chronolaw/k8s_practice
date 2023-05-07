#!/bin/bash

# chrono @ 2023-05

# https://kubernetes.io/zh/docs/setup/production-environment/tools/kubeadm/install-kubeadm/
# https://kubernetes.io/zh-cn/docs/setup/production-environment/container-runtimes/

# sudo vi /etc/hostname

# iptables

cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1 # better than modify /etc/sysctl.conf
EOF

sudo sysctl --system

# Disable Swap

sudo swapoff -a
sudo sed -ri '/\sswap\s/s/^#?/#/' /etc/fstab

