#!/bin/bash

cd /tmp
mkdir sublime
cd sublime
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1%20x64.tar.bz2
tar xjf *
rm *
mv * sublime_text -r
sudo mv * /opt -r
cd ..
rm -rf sublime

sudo ln -s /opt/sublime_text/sublime_text /usr/bin/subl

subl &
sleep 2
killall subl
cd ~/.config/sublime-text-2/Packages/User/
rm *
git init
git remote add origin git@github.com:tylermenezes/Sublime-Text-Settings.git
git pull origin master



cat << 'EOF' > "~/.local/share/applications/Sublime Text 2.desktop"
#!/usr/bin/env xdg-open

[Desktop Entry]
Version=1.0
Name=Sublime Text 2
Comment=Edit text files using Sublime Text 2
Exec=subl %u
Terminal=false
Icon="/opt/sublime_text/Icon/48x48/sublime_text.png"
Type=Application
Categories=TextEditor;IDE;Development;Application;Utility
X-Ayatana-Desktop-Shortcuts=NewWindow
Icon[en_US]=/opt/sublime_text/Icon/128x128/sublime_text.png
Encoding=UTF-8
StartupNotify=true
MimeType=text/plain;


[NewWindow Shortcut Group]
Name=New Window
Exec=subl -n
TargetEnvironment=Unity
EOF;
