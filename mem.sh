#!/bin/bash
TOTALMEMKB=$(cat /proc/meminfo | awk -F " " '/^MemTotal:/ {print $2 }')   
BUFFERKB=$(cat /proc/meminfo | awk -F " " '/^Buffers:/ {print $2 }') 
CACHEDKB=$(cat /proc/meminfo | awk -F " " '/^Cached:/ {print $2 }') 
FREEKB=$(cat /proc/meminfo | awk -F " " '/^MemFree:/ {print $2 }') 
USEDKB=$(($TOTALMEMKB - $FREEKB - $CACHEDKB - $BUFFERKB))
GI=1073741824

TOTALMEMGI=$(echo "scale=2; $TOTALMEMKB/$GI" | bc)
USEDGI=$(echo "scale=2; $USEDKB/$GI" | bc)

echo " $USEDGI Gi / $TOTALMEMGI Gi "  
