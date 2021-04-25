#!/bin/sh

power=$(acpi -b | awk '{print $4}' | cut -d ',' -f 1)
ischarging=$(upower -d | grep online | awk '{print $2}')
if  [ $ischarging = "yes" ] 
then
    echo " $power AC |"
else
    echo " $power |"
fi
