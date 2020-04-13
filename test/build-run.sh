#!/bin/bash

NAME=${1:-Factorio_server}
PORT=${2:-34197}
SERVER=https://www.factorio.com/get-download/stable/headless/linux64

# Set Dockerfile
sed -i "s/SED_NAME/$NAME/g" Dockerfile
sed -i "s/SED_PORT/$PORT/g" Dockerfile
#sed -i server-setting.json

