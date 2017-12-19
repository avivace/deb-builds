#!/bin/bash
git clone --recursive https://github.com/jp9000/obs-studio.git
cd obs-studio
mkdir build && cd build
cmake -DUNIX_STRUCTURE=1 -DCMAKE_INSTALL_PREFIX=/usr ..
make -j4
sudo checkinstall --pkgname=obs-studio --fstrans=no --backup=no \
  --pkgversion="$(date +%Y%m%d)-git" --deldoc=yes