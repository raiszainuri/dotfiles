#!/bin/sh

#date_time=$(date +%_d.%m.%H.%M.%S)
curr_workspace=$(wmctrl -d | grep -w $1 '*' | awk '{print $10}')
case $curr_workspace in
    [1] ) printf "°1  2  3  4  7  8  9  0 ";;
    [2] ) printf " 1 °2  3  4  7  8  9  0 ";;
    [3] ) printf " 1  2 °3  4  7  8  9  0 ";;
    [4] ) printf " 1  2  3 °4  7  8  9  0 ";;
    [5] ) printf " 2  3  4 °5  6  7  8  9 ";;
    [6] ) printf " 2  3  4  5 °6  7  8  9 ";;
    [7] ) printf " 1  2  3  4 °7  8  9  0 ";;
    [8] ) printf " 1  2  3  4  7 °8  9  0 ";;
    [9] ) printf " 1  2  3  4  7  8 °9  0 ";;
    *   ) printf " 1  2  3  4  7  8  9 °0 ";;
esac
