#!/bin/bash

# This script is to build solc with coverage support.

# Clone the solc repository
cd /home/coverage
git clone git://github.com/ethereum/solidity.git solc-source
cd solc-source
git checkout v0.8.28  # Or another version you prefer

# Install prerequisites
./scripts/install-dependencies.sh

# Create a build directory
mkdir ../solc-build
cd ../solc-build

# Configure cmake with coverage support, disable Z3, and force coverage on
cmake ../solc-source \
    -DCMAKE_BUILD_TYPE=Debug \
    -DENABLE_COVERAGE=ON \
    -DUSE_Z3=OFF \
    -DSTRICT_Z3_VERSION=OFF

# Build solc with the necessary flags
make -j 12
make install

echo "solc has been built with coverage support!"
