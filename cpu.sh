#!/bin/bash
CPU=$(top -bn1 | grep "Cpu(s)" |  sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | bc -l ) 
USES=$(echo "100 - $CPU"|bc -l) 
printf ' CPU: %04.1f%%' "$USES"
