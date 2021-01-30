#!/bin/sh

#date_time=$(date +%_d.%m.%H.%M.%S)
curr_workspace=$(wmctrl -d | grep -w $5 '*' | awk '{print $10}')
active_win=$(xdotool getwindowfocus getwindowname)
printf " ␥ $curr_workspace ␥ $active_win"
