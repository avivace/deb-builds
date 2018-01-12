git clone https://github.com/jwilm/alacritty.git
cargo install cargo-deb
cd alacritty
rustup override set stable
rustup update stable
sudo apt-get install cmake libfreetype6-dev libfontconfig1-dev xclip
cargo build --release
cargo deb
