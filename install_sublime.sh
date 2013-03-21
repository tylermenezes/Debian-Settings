#!/bin/bash

cd /tmp
mkdir sublime
cd sublime
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1%20x64.tar.bz2
tar xzf *
rm *
mv * sublime_text
sudo mv * /opt -r
cd ..
rm -rf sublime

sudo ln -s /usr/bin/subl /opt/sublime_text/sublime_text

subl &
sleep 2
killall subl
cd ~/.config/sublime-text-2/Packages/User/
rm *
git init
git remote add origin git@github.com:tylermenezes/Sublime-Text-Settings.git
git pull origin master
