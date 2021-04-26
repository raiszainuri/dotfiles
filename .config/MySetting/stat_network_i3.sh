#!/bin/sh

netusage=$(vnstat | grep -w 'today' | awk '{print $8 $9}')
#netusage=$(netstat -i wlp1s0 | grep -w 'wlp1s0' | awk '{print $3+$7}')
#total_stat=$(( $netusage / 1000 ))
printf "$netusage"
