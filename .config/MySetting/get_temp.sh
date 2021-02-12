#!/bin/sh

currenttemp=$(sensors | grep -w 'temp1' | awk '{print $2}' | grep '+' -n)
echo "$currenttemp "