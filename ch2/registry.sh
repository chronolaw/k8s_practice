#!/bin/sh

# chrono @ 2023-07
# https://docs.docker.com/registry/
# https://docs.docker.com/registry/spec/api/

docker pull registry

docker run -d --rm -p 5000:5000 registry

# docker run -d -p 5000:5000 \
#     -v /tmp/registry:/var/lib/registry \
#     registry

docker tag nginx:alpine 127.0.0.1:5000/nginx:alpine
docker push 127.0.0.1:5000/nginx:alpine

# check image list
curl 127.1:5000/v2/_catalog | jq

# docker run -d --rm registry

