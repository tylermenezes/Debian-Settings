#!/bin/bash

sudo apt-get install ppa-purge -y
sudo apt-get purge bbswitch-dkms bumblebee-nvidia -y
sudo apt-get install linux-headers-3.5.0-17-generic -y
sudo apt-get install bbswitch-dkms bumblebee-nvidia -y

sudo usermod -a -G bumblebee "$(whoami)"
sudo usermod -a -G bumblebee root
