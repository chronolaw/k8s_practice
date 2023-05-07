#!/bin/bash
#

# chrono @ 2023-08
# https://github.com/prometheus-operator/kube-prometheus/

wget https://github.com/prometheus-operator/kube-prometheus/archive/refs/tags/v0.12.0.tar.gz
tar xfz v0.12.0.tar.gz

cd kube-prometheus-0.12.0/manifests

# use NodePort Service
sed '/spec/a\  type: NodePort' -i grafana-service.yaml
sed '/spec/a\  type: NodePort' -i prometheus-service.yaml

# in kube-prometheus-0.12.0
cd ..

kubectl create -f manifests/setup

kubectl get pod -n monitoring

# waiting

#kubectl create -f manifests
#kubectl get deploy -n monitoring

