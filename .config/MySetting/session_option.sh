#!/bin/sh
while true; do
    read -p "Shutdown atanapi Reboot? [s/r]
" yn
    case $yn in
        [Ss]* ) shutdown now; break;;
        [Rr]* ) reboot;;
        * ) exit;;
    esac
done
