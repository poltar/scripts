#!/bin/bash

function battery() {
    ICONFULL=""
    ICON75=""
    ICON50=""
    ICON25=""
    ICON0=""

    BATLVL="$(cat /sys/class/power_supply/BAT1/capacity)"

    if [ ${BATLVL} -eq 100 ]; then
        echo -e '${ICONFULL}'  "${BATLVL}%"
    elif [ ${BATLVL} -lt 100 -a ${BATLVL} -gt 50 ]; then
        echo -e '${ICON75}'  "${BATLVL}%"
    elif [ ${BATLVL} -eq 50 ]; then
        echo -e '${ICON50}'  "${BATLVL}%"
    elif [ ${BATLVL} -lt 50 -a ${BATLVL} -gt 15 ]; then
        echo -e '${ICON25}'  "${BATLVL}%"
    elif [ ${BATLVL} -lt 15 -a ${BATLVL} -gt 0 ]; then
        echo -e '${ICON0}'  "${BATLVL}%"
    else 
        echo "ERR:BAT ISSUE"
    fi
}

while true; do
	BAR_INPUT="$(battery)"
	echo $BAR_INPUT
	sleep 1
done
