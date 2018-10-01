#!/bin/bash

slop=`slop --color=255,255,255,0.3 --bordersize=1`

if [ "$slop" != "" ];then
	termite --geometry $slop
fi
