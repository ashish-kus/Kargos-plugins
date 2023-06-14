#!/bin/bash
AC=$(cat /sys/class/power_supply/AC/online)            # whether ac power connected ot not
if [ $AC -eq 1 ]; then
  ONLINE="⚡"
else
  ONLINE="  "
fi
CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)   #battery percentage
#            -10 -20 -30 -40 -50 -60 -70 -80 -90  -100 100 
BATTERYICON=( "" "" "" "" "" "" "" "" "" "" "" )
FINAL=" $CAPACITY% ${BATTERYICON[$CAPACITY/10]} $ONLINE"
echo "$FINAL"


