#!/bin/sh

datestr=$(date +%y%m%d_%H%M%S)
scrot ~/Screenshots/SS_$datestr.png
xclip -selection clipboard -t image/png -i ~/Screenshots/SS_$datestr.png
