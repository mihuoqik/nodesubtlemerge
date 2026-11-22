#!/usr/bin/env bash
set -e
REPO="mihuoqik/nodesubtlemerge"
TAG="frosty-comet-hidden-canyon"
LIB="boulder-cable.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
