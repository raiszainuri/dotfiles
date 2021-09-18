#!/bin/sh

reminder=$(cat ~/.config/reminder.txt)

dunstify "$reminder"