#!/bin/sh

power=$(acpi -b | awk '{print $4}' | cut -d ',' -f 1)
ischarging=$(upower -d | grep online | awk '{print $2}')
detail=$(acpi -i | cut -d ':' -f 2)
if  [ $ischarging = "yes" ] 
then
    echo "<txt> $power AC |</txt>"
else
    echo "<txt> $power |</txt>"
fi
echo "<tool>$detail</tool>"