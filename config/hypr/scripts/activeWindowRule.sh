#!/bin/bash

hyprctl dispatch togglefloating active

title=$(hyprctl activewindow | grep 'title:' | sed 's/title: /title:^(/g')

echo "windowrule = float, $title)$" >> /home/stian/.config/hypr/windowrules.conf
