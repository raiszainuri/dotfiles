#!/bin/sh

netusage_h=$(vnstat -h 8 | cut -d " " -f 6- | tail -n +2)

dunstify "$netusage_h"