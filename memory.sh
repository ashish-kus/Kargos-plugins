#!/bin/bash
GI=1073741824
USED=`free -b | grep 'Mem:' | awk '{print \$3}'`
USEDG=$(echo "scale=2; $USED/$GI" | bc)
TOTAL=`free -b | grep 'Mem:' | awk '{print \$2}'`
TOTALG=$(echo "scale=2; $TOTAL/$GI" | bc)
echo " MEM $USEDG / $TOTALG "
