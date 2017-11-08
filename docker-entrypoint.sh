#!/usr/bin/env bash

set -ex

cmake --version
mkdir build
cd build
cmake ..
make -j4
./cmake_docker
