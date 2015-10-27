#/bin/sh
git clone https://github.com/sass/libsass.git
git clone https://github.com/sass/sassc.git libsass/sassc
cd libsass
autoreconf --force --install
cd ..
sudo make -C libsass -j5 install

npm install && gulp