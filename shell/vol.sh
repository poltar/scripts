#!/bin/bash

full_output=`pulseaudio-ctl full-status`
volume=`pulseaudio-ctl full-status | grep -o '[0-9]*'`
mute_state=($full_output)
is_sink_muted=${mute_state[1]}
is_input_muted=${mute_state[2]}

if [ "$is_sink_muted" = "yes" ];then
	echo "Muted"
else
	echo $volume
fi
