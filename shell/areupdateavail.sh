#!/bin/bash

yesno=`checkupdates`

if [ "$yesno" = "" ];then
	exit 0
else
	echo "Updates Available"
fi
