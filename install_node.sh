#!/bin/bash

sudo apt-get install -y build-essential checkinstall curl libssl-dev apache2-utils
cd /tmp
mkdir node
git clone git://github.com/ry/node.git
cd node
./configure
make
sudo make install
cd ..
rm -rf node
