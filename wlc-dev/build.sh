#!/bin/bash
git clone https://github.com/Cloudef/wlc
git submodule update --init --recursive # - initialize and fetch submodules
mkdir target && cd target               # - create build target directory
cmake -DCMAKE_BUILD_TYPE=Upstream ..    # - run CMake
make                                    # - compile
checkinstall --install=no