#!/bin/sh
NETWORK_NAME="iwindplus-middle" # 将 "your_network_name" 替换为目标网络的名称
EXISTS=$(docker network inspect -f '{{.Name}}' $NETWORK_NAME)
if [ "$EXISTS" == "" ]; then
    docker network create $NETWORK_NAME
else
    echo "Network exists."
fi