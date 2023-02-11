#!/bin/bash

if pactl list sources | grep -A 5 "Family 17h/19h HD Audio Controller Digital Microphone" | grep -q 'Mute: yes'; then
  echo 1 | sudo tee /sys/class/leds/platform\:\:micmute/brightness
else
  echo 0 | sudo tee /sys/class/leds/platform\:\:micmute/brightness
fi

