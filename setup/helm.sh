#!/bin/sh

# chrono @ 2023-11

# https://github.com/helm/helm/releases
wget https://get.helm.sh/helm-v3.13.2-linux-arm64.tar.gz

tar xfz helm-v3.13.2-linux-arm64.tar.gz

sudo install linux-arm64/helm /usr/local/bin

