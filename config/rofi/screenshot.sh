#!/bin/bash
 
title="Screenshot menu"
selClip="Selection -> clipboard"
selSave="Selection -> Save"
selRec="Selection Recording"


if pgrep wf-recorder > /dev/null
then
	killall wf-recorder
else
    # do something else if wf-recorder is not running
    selected_option=$(echo "$selClip
$selSave
$selRec" | rofi -dmenu -i -p "$title" \
		-theme "~/.config/rofi/powermenu.rasi")

 

if [ "$selected_option" == "$selClip" ]
then
   grim -g "$(slurp)" - | wl-copy
elif [ "$selected_option" == "$selSave" ]
then
   grim -g "$(slurp)"
elif [ "$selected_option" == "$selRec" ]
then
	wf-recorder -g "$(slurp)" -f "Rec_$(date +'%Y-%m-%d_%H-%M-%S').mp4"
elif [ "$selected_option" == "$endRec" ]
then
  killall wf-recorder
else
  echo "No match"
fi
fi
