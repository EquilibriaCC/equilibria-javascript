#!/usr/bin/env bash

# initialize submodules recursively
git submodule update --init --recursive

# update monero-cpp
cd ./external/equilibria-cpp
git checkout tags/v0.3.3
git pull --ff-only origin tags/v0.3.3

# update monero-core
cd ./external/equilibria
git checkout v7.0.1
git pull --ff-only origin v7.0.1
cd ../../../../