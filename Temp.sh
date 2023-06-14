#!/bin/bash
BLUE=#5fc3f5
GREEN=#78faac
RED=#FF0000
YELLOW=#e0ca04

if hash acpi 2>/dev/null;then               # if have acpi sensor then set value of TEMP.
  TEMP=$(acpi -t | cut -d " " -f 4)  
fi
if [[ $TEMP < 45 && $TEMP > 0 ]]; then
  COLOR=$BLUE 
elif [[ $TEMP > 45 && $TEMP < 60 ]]; then
  COLOR=$GREEN 
elif [[ $TEMP >60 && $TEMP < 75 ]]; then
  COLOR=$YELLOW
else
  COLOR=$RED
fi
 FINAL="<span style='color:$COLOR;'>  $TEMP°c</span>"
 echo  "$FINAL "
  

