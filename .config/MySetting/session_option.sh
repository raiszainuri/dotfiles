#!/bin/sh
while true; do
    read -p "Shutdown atanapi Reboot? [r/s]
" yn
    case $yn in
        [Ss]* ) shutdown now; break;;
        [Rr]* ) reboot;;
        [muhun]* ) shutdown now;;
        * ) exit;;
    esac
done
