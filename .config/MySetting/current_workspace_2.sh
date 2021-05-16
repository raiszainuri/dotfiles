#!/bin/sh

#date_time=$(date +%_d.%m.%H.%M.%S)
curr_workspace=$(wmctrl -d | grep -w $1 '*' | awk '{print $10}')
case $curr_workspace in
    [1] ) printf "1";;
    [2] ) printf "2";;
    [3] ) printf "3";;
    [4] ) printf "4";;
    [5] ) printf "5";;
    [6] ) printf "6";;
    [7] ) printf "7";;
    [8] ) printf "8";;
    [9] ) printf "9";;
    *   ) printf "0";;
esac
