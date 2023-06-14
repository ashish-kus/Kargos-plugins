#!/bin/bash

SPEED=$(cat /proc/acpi/ibm/fan |  awk -F " " '/^speed:/ {print $2 }' )
FINAL=" $SPEED"
echo "$FINAL "
