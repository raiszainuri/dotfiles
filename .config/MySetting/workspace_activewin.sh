#!/bin/sh

#date_time=$(date +%_d.%m.%H.%M.%S)
#netusage=$(vnstat | grep -w 'today' | awk '{print $8 $9}')
#curr_workspace=$(wmctrl -d | grep -w $5 '*' | awk '{print $10}')
active_win=$(xdotool getwindowfocus getwindowname)
#printf " $netusage ␥ $curr_workspace ␥ $active_win"
printf " => ${active_win:0:40}..."
