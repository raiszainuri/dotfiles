#!/bin/sh
temp=$(sensors | grep -w 'temp1' | awk '{print $2}' | sed -n 2p | cut -d '+' -f 2)
echo "$temp"