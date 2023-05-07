# chrono @ 2023-08

# https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner

#kubecal apply -f rbac.yaml
#kubecal apply -f class.yaml
#kubecal apply -f deployment.yaml

# change namespace
#   default => kube-system
sed 's/default/kube-system/g' rbac.yaml | \
  kubectl apply -f -

kubectl apply -f class.yaml

# change: namespace/image/NFS_SERVER/NFS_PATH
#   default => kube-system
#   10.3.243.101 => 192.168.10.208
#   /ifs/kubernetes => /tmp/nfs
sed 's/default/kube-system/g' deployment.yaml | \
  sed 's/10.3.243.101/192.168.26.208/g' | \
  sed 's/\/ifs\/kubernetes/\/tmp\/nfs/g' | \
  kubectl apply -f -

