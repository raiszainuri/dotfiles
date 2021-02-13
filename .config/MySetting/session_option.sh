#!/bin/sh
while true; do
    read -p "Shutdown atau Reboot? [r/s]
" yn
    case $yn in
        [Ss]* ) shutdown now; break;;
        [Rr]* ) reboot;;
        * ) exit;;
    esac
done
