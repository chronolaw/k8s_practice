#!/bin/sh

# chrono @ 2023-05

sudo apt install -y docker.io
sudo service docker start         #启动docker服务
sudo usermod -aG docker ${USER}   #当前用户加入docker组
