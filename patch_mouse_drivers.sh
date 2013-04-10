#!/bin/bash

cat << 'EOF' > /usr/share/X11/xorg.conf.d/910-rat.conf
Section "InputClass"
        Identifier "Mouse Remap"
        MatchProduct "Saitek Cyborg R.A.T.7 Mouse"
        MatchDevicePath "/dev/input/event*"
        Option "ButtonMapping" "1 2 3 4 5 6 7 8 9 0 0 0 0 0 0"
EndSection
EOF
