#!/bin/sh

#date_time=$(date +%_d.%m.%H.%M.%S)
curr_workspace=$(wmctrl -d | grep -w $1 '*' | awk '{print $9}')
case $curr_workspace in
    [1] ) printf " °1  2  3  4  5  6  7  8  9  10";;
    [2] ) printf "  1 °2  3  4  5  6  7  8  9  10";;
    [3] ) printf "  1  2 °3  4  5  6  7  8  9  10";;
    [4] ) printf "  1  2  3 °4  5  6  7  8  9  10";;
    [5] ) printf "  1  2  3  4 °5  6  7  8  9  10";;
    [6] ) printf "  1  2  3  4  5 °6  7  8  9  10";;
    [7] ) printf "  1  2  3  4  5  6 °7  8  9  10";;
    [8] ) printf "  1  2  3  4  5  6  7 °8  9  10";;
    [9] ) printf "  1  2  3  4  5  6  7  8 °9  10";;
    * ) printf   "  1  2  3  4  5  6  7  8  9 °10";;
esac
