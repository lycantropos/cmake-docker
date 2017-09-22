#!/usr/bin/env bash

set -ex

cmake --version
cmake -G "CodeBlocks - Unix Makefiles" .
cmake --build . --target all -- -j 2
./cmake_docker
