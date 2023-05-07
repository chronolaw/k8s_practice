#!/bin/bash
#

# https://github.com/kubernetes-sigs/metrics-server
# wget https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
# sed '/args:/a\        - --kubelet-insecure-tls' components.yaml

# download and change yaml
wget -O- https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml \
   | sed '/args:/a\        - --kubelet-insecure-tls' - > components.yaml

