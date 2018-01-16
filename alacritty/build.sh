#!/bin/bash                                                                     
# FIRST RUN
# git clone https://github.com/jwilm/alacritty.git
# cargo install cargo-deb
# rustup override set stable
# rustup update stable
# sudo apt-get install cmake libfreetype6-dev libfontconfig1-dev xclip

cd alacritty                                                                    
git pull                                                                        
cargo build --release
cargo deb                                                                       
sudo aptly repo remove repo1 alacritty                                          
sudo rm /root/.aptly/public/pool/main/a/alacritty/alacritty_0.1.0_amd64.deb     
sudo aptly repo add repo1 target/debian/*.deb                                   
sudo aptly publish update -batch unstable                                       
sudo cp /root/.aptly/public/ /var/www/deb/ -r
