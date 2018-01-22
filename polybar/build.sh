## first run
#git clone --branch 3.1.0 --recursive https://github.com/jaagr/polybar
#mkdir polybar/build
#cd polybar/build

## run from polybar/build
# git pull (?)
cmake ..
echo "A fast and easy-to-use status bar" >> description-pak
sudo checkinstall -D -y \
	--pkgsource="https://github.com/jaagr/polybar" \
	--pkglicense="MIT" \
	--pkgversion="3.1.0" \
	--deldesc=no \
	--maintainer="Antonio Vivace \\<avivace4@gmail.com\\>" \
	--pkgname=polybar \
	--requires="cmake,cmake-data,libcairo2-dev,libxcb1-dev,libxcb-ewmh-dev,libxcb-icccm4-dev,libxcb-image0-dev,libxcb-randr0-dev,libxcb-util0-dev,libxcb-xkb-dev,pkg-config,python-xcbgen,xcb-proto,libxcb-xrm-dev,libasound2-dev,libpulse-dev,libmpdclient-dev,libiw-dev,libcurl4-openssl-dev,libxcb-cursor-dev" \
	--install=no \
	--nodoc
sudo aptly repo add repo1 *.deb
bash ../updateRepo.sh