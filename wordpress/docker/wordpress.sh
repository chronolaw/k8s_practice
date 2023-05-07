#!/bin/sh

# chrono @ 2023-07

# https://hub.docker.com/_/wordpress
#docker pull wordpress:6

# https://hub.docker.com/_/mariadb
#docker pull mariadb:11

# docker exec -it a64 mysql -u wp -p
# show databases;
# use db;
# show tables;

# ip addr should be '172.17.0.2'
docker run -d --rm \
    -e MARIADB_DATABASE=db \
    -e MARIADB_USER=wp \
    -e MARIADB_PASSWORD=123 \
    -e MARIADB_ROOT_PASSWORD=123 \
    mariadb:10

# ip addr should be '172.17.0.3'
docker run -d --rm \
    -e WORDPRESS_DB_HOST=172.17.0.2 \
    -e WORDPRESS_DB_USER=wp \
    -e WORDPRESS_DB_PASSWORD=123 \
    -e WORDPRESS_DB_NAME=db \
    wordpress:6

docker run -d --rm \
    -p 80:80 \
    -v `pwd`/wp.conf:/etc/nginx/conf.d/default.conf \
    nginx:alpine

# in browser http://192.168.26.208
