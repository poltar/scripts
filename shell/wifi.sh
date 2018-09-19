#!/bin/bash

WIFI=`iwgetid -r`

if [ "$WIFI" = "" ];then
	echo "Disconnected"
else
	echo $WIFI
fi
