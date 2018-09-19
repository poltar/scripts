#!/bin/bash

URL='https://www.accuweather.com/en/us/muncie-in/47305/weather-forecast/328785'

weather=`wget -q -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print $2": "$16", "$12"°" }'| head -1`
degrees=`echo $weather | grep -o '[0-9]*'`
echo "$degrees °F"
