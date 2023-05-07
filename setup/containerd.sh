#!/bin/sh

# chrono @ 2023-05

# https://kubernetes.io/zh-cn/docs/concepts/architecture/cgroups/
# https://github.com/containerd/containerd/blob/main/docs/getting-started.md
# https://kubernetes.io/zh-cn/docs/setup/production-environment/container-runtimes/

sudo apt update
sudo apt install -y containerd

sudo systemctl enable containerd
#systemctl status containerd

# check cgroup version
stat -fc %T /sys/fs/cgroup/

# create containerd config
sudo mkdir /etc/containerd

containerd config default | \
    sed 's/SystemdCgroup = false/SystemdCgroup = true/g' | \
    sudo tee /etc/containerd/config.toml

sudo systemctl restart containerd

# verify
sudo ctr version
