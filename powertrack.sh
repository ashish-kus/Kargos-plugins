#!/bin/bash

#####################    [  power_now [  power_consumption  ]    #################
#
#
#  █████╗ ███████╗██╗  ██╗██╗███████╗██╗  ██╗      ██╗  ██╗██╗   ██╗███████╗
# ██╔══██╗██╔════╝██║  ██║██║██╔════╝██║  ██║      ██║ ██╔╝██║   ██║██╔════╝
# ███████║███████╗███████║██║███████╗███████║█████╗█████╔╝ ██║   ██║███████╗
# ██╔══██║╚════██║██╔══██║██║╚════██║██╔══██║╚════╝██╔═██╗ ██║   ██║╚════██║
# ██║  ██║███████║██║  ██║██║███████║██║  ██║      ██║  ██╗╚██████╔╝███████║
# ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝      ╚═╝  ╚═╝ ╚═════╝ ╚══════╝
#                                                     
#       ⚡                                        📧 ashish.kus2408@gmail.com
##################################################################################
# We cat a file nameed power_now at /sys/clsss/power_supply/BAT0/power_now 
# which contain power in microwatt, then we will convert it into Watt(w) then
# output the value

MICROWATT=$(cat /sys/class/power_supply/BAT0/power_now)
WATT=$( echo "scale=2;$MICROWATT / 1000000 "| bc ) 
AC=$(cat /sys/class/power_supply/AC/online)            # whether ac power connected ot not
if [ $AC -eq 1 ]; then
  ONLINE="⚡"
else
  ONLINE=""
fi
FINAL="$WATT W$ONLINE"
echo "$FINAL" 

