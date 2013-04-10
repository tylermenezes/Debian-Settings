#!/bin/bash

pushd /tmp
mkdir graphics
cd graphics
sudo apt-get -y install xorg-dev

sudo apt-get -y build-dep xserver-xorg-video-intel
sudo apt-get -y source xserver-xorg-video-intel
cd xserver-xorg*
sudo wget https://gist.github.com/tylermenezes/5351814/raw/476c12c74f9245f6350a844f95d3d8371b8107af/xserver-xorg-video-intel-2.20.14-crtc.patch
sudo patch -p1 < xserver-xorg-video-intel-2.20.14-crtc.patch
sudo dpkg-buildpackage -b
cd ..
sudo dpkg --install xserver-xorg-video*_amd64.deb

git clone git://github.com/liskin/hybrid-screenclone.git
cd hybrid-screenclone
sudo make
sudo cp screenclone /usr/bin/
sudo chmod +x /usr/bin/screenclone
sudo cp xorg.conf.nvidia /etc/bumblebee/xorg.conf.nvidia
sudo rm /etc/X11/xorg.conf

echo xserver-xorg-video-intel hold | sudo dpkg --set-selections

sudo apt-get install -y ppa-purge
sudo apt-get purge -y bbswitch-dkms bumblebee-nvidia
sudo apt-get install -y linux-headers-generic
sudo apt-get install -y bbswitch-dkms bumblebee-nvidia

sudo wget https://github.com/sagark/thinkdisp/zipball/master
sudo unzip master
cd sagark*
sudo make
sudo python setup.py install
nohup sudo thinkdisp &

popd
rm -rf /tmp/graphics
