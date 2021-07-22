#!/bin/sh

#date_time=$(date +%_d.%m.%H.%M.%S)
curr_workspace=$(wmctrl -d | grep -w $1 '*' | awk '{print $10}')
case $curr_workspace in
    [1] ) printf "1st";;
    [2] ) printf "2nd";;
    [3] ) printf "3rd";;
    [4] ) printf "4th";;
    [5] ) printf "5th";;
    [6] ) printf "6th";;
    [7] ) printf "7th";;
    [8] ) printf "8th";;
    [9] ) printf "9th";;
    *   ) printf "0s";;
esac
