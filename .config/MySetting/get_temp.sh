#!/bin/sh
cpu_usage=$(top -bn1 | grep Cpu | awk '{print $2}')
temp=$(sensors | grep -w 'temp1' | awk '{print $2}' | sed -n 2p | cut -d '+' -f 2)
sensors=$(sensors)
echo "<txt>${cpu_usage:0:4}% | $temp |</txt>"
echo "<tool>$sensors</tool>"