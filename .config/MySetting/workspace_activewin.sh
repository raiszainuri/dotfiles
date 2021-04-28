#!/bin/sh

#date_time=$(date +%_d.%m.%H.%M.%S)
#netusage=$(vnstat | grep -w 'today' | awk '{print $8 $9}')
#curr_workspace=$(wmctrl -d | grep -w $5 '*' | awk '{print $10}')
active_win=$(xdotool getwindowfocus getwindowname)
length_str=${#active_win}
#printf " $netusage ␥ $curr_workspace ␥ $active_win"
if  (( $length_str >= 45 ))
then
    echo "<txt> => ${active_win:0:45}...</txt>"
else
    echo "<txt> => $active_win</txt>"
fi

echo "<tool>$active_win</tool>"
