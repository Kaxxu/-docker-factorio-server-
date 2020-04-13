#!/bin/bash

NAME=${1:-Factorio_server}
PORT=${2:-34197}
SERVER=https://www.factorio.com/get-download/stable/headless/linux64

# Set Dockerfile
sed -i "s/SED_NAME/$NAME/g" Dockerfile
sed -i "s/SED_PORT/$PORT/g" Dockerfile

echo -e "\e[32mGet Factorio server\e[0m"
wget -O factorio.tar.xz $SERVER
tar -xf factorio.tar.xz
echo ""

echo -e "\e[32mDocker Build\e[0m"
docker build -t $NAME .
echo ""

echo -e "\e[32mDocker Run\e[0m"
docker run -d -p $PORT:$PORT $NAME
echo ""