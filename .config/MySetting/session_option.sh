#!/bin/sh
while true; do
    read -p "shutdown | logout | reboot | cancel ?
   s         l        r       any
" yn
    case $yn in
        [ys]* ) shutdown now; break;;
        [r]* ) reboot;;
        [l]* ) bspc quit;;
        * ) exit;;
    esac
done
