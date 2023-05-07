#!/bin/bash

# chrono @ 2023-09

# https://github.com/goharbor/harbor/releases
wget -O - \
    https://github.com/goharbor/harbor/releases/download/v2.9.0/harbor-online-installer-v2.9.0.tgz | \
    tar xz

cd ./harbor

# https://goharbor.io/docs/2.9.0/install-config/configure-yml-file/
# change hostname and passward
cat harbor.yml.tmpl | \
    sed 's/reg.mydomain.com/harbor.test/g' | \
    sed 's/Harbor12345/12345/g' > \
    harbor.yml

# online install
sudo ./install.sh

