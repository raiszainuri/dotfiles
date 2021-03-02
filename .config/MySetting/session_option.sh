#!/bin/sh
while true; do
    read -p "shutdown? [y/g]
" yn
    case $yn in
        [y]* ) shutdown now; break;;
        [r]* ) reboot;;
        * ) exit;;
    esac
done
