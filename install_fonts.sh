#!/bin/bash

USERNAME="$(whoami)"

cd /usr/share/fonts/truetype
sudo mkdir myfonts
cd myfonts
sudo cp /home/$USERNAME/Dropbox/Fonts/*.ttf .
cd ..
sudo fc-cache

sudo mkdir /usr/share/fonts/opentype
cd /usr/share/fonts/opentype
sudo mkdir myfonts
cd myfonts
sudo cp /home/$USERNAME/Dropbox/Fonts/*.otf .
cd ..
sudo fc-cache
