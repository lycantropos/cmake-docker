#!/usr/bin/env bash

set -ex

cmake --version
mkdir build
cd build
cmake ..
make -j$(nproc --all)
./cmake_docker
