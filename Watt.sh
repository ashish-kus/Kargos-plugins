#!/bin/bash

MICROWATT=$(cat /sys/class/power_supply/BAT0/power_now) # Power counsumption in watt:
WATT=$( echo "scale=2;$MICROWATT / 1000000 "| bc ) 
FINAL=" $WATT W "

echo $FINAL
