#!/bin/bash

# If you suppose your server supports chacha and salsa,
# this script must be run.

wget https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
tar xvzf LATEST.tar.gz
cd libsodium-stable
./configure
make -j2
make install
cd ..

echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf
ldconfig
ldconfig -p | grep libsodium
