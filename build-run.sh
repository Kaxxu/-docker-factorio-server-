#!/bin/bash

NAME=${2:-factorio_server}
PORT=${3:-34197}
GET_SERVER=https://www.factorio.com/get-download/stable/headless/linux64

function get() {
  echo -e "\e[32mGet Factorio server\e[0m"
  wget -O factorio.tar.xz ${GET_SERVER}
  tar -xf factorio.tar.xz
  echo ""
}

function build() {
  echo -e "\e[32mDocker Build\e[0m"
  docker build -t $NAME .
  echo ""
}

function run() {
  echo -e "\e[32mDocker Run\e[0m"
  docker run -d -p 127.0.0.1:$PORT:34197/udp $NAME
  echo ""
}

function all() {
  get
  build
  run
}

"$@"
