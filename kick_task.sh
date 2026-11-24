#!/usr/bin/env bash
set -e
LIB="easy-keel.a"
TAG="bright-cedar-clever-comet"
REPO="ferramospire/nodeiridiumcrumb"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -o app -std=c++17 -pthread -O2 main.cpp "$LIB" && ./app
