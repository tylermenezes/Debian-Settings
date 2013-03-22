#!/bin/bash

sudo cp -rf launcher/* /usr/share/unity/6


sed -i 's/selected_bg_color #f07746/selected_bg_color #2684A6/g' /usr/share/themes/Ambiance/gtk-3.0/gtk-main.css
sed -i 's/selected_bg_color:#f07746/selected_bg_color:#2684A6/g' /usr/share/themes/Ambiance/gtk-3.0/settings.ini
sed -i 's/selected_bg_color:#f07746/selected_bg_color:#2684A6/g' /usr/share/themes/Ambiance/gtk-2.0/gtkrc
