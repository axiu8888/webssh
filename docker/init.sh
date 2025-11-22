#!/bin/bash


echo -e "\n-----------------------------------"
dir=$PWD
name=webssh
echo "启动 $name"
docker run -d --restart=always \
  --network znsxnet --network-alias hsrg-$name \
  --log-driver json-file \
  --log-opt max-file=2 \
  --log-opt max-size=100m \
  -p 5022:22 \
  -e TZ=Asia/Shanghai \
  --name $name \
  arm64v8/webssh:v1 \

