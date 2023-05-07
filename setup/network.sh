#!/bin/bash

# chrono @ 2023-05

# https://github.com/flannel-io/flannel

kubectl apply -f flannel.yml

echo "waiting network ready ..."

sleep 1

kubectl get node

# k8s-master is the name of control plane node
kubectl taint node k8s-master node-role.kubernetes.io/control-plane:NoSchedule-

# test pod
kubectl run ngx --image=nginx:alpine

