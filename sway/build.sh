#!/bin/bash
git clone https://github.com/swaywm/sway
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_SYSCONFDIR=/etc ..
make
checkinstall --install=no