#!/bin/bash

mkdir ~/.startup

cat << 'EOF' > ~/.startup/mapkeys.sh
#!/bin/bash
echo "remove Mod1 = Alt_L
remove Mod1 = Alt_R
remove Control = Control_L
remove Control = Control_R

keycode 135 = Super_R

keysym Control_L = Alt_L
keysym Alt_L = Control_L

keysym Control_R = Alt_R
keysym Alt_R = Control_R

add Mod4 = Super_R
add Mod1 = Alt_L
add Mod1 = Alt_R
add Control = Control_L
add Control = Control_R

pointer = 1 2 3 5 4 7 6 8 9 10 11 12
" > ~/.Xmodmap

sudo xmodmap ~/.Xmodmap
EOF;

chmod +x ~/.startup/mapkeys.sh
