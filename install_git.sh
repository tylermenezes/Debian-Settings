#!/bin/bash

apt-get -y install git xclip

git config --global user.name "Tyler Menezes"
git config --global user.email "Tyler Menezes"

mkdir ~/.ssh
ssh-keygen -t rsa -C "tylermenezes@gmail.com" -N "" -f ~/.ssh/id_rsa

xclip -sel clip < ~/.ssh/id_rsa.pub
xdg-open https://github.com/settings/ssh > /dev/null 2>&1 &
echo "Add this key to Github:"
echo ""
cat ~/.ssh/id_rsa.pub
echo ""
echo "(it has been copied to your clipboard)"
read -p "Press Enter to continue"
