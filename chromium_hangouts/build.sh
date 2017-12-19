#!/bin/bash
apt-get source chromium-browser
sudo apt-get build-dep chromium-browser
debuild -b -uc -us