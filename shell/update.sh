#!/bin/bash

# Script for Debian based users that gets the number of upgradable packages on the system

CURDIR="/tmp/"
FILE="updatelist"
ICON=""

function main() {
	if [ ! -f ${CURDIR}/${FILE} ]; then
		touch ${CURDIR}${FILE}
	else
		rm -f ${CURDIR}${FILE}
		touch ${CURDIR}${FILE}
	fi

	apt list --upgradable > ${CURDIR}${FILE} 2> /dev/null

	sed -i '1d' ${CURDIR}${FILE}
	tr -d "\n" < ${CURDIR}${FILE} > /dev/null
	LINES="$(wc -l < ${CURDIR}${FILE})"

	if [ $LINES -eq 0 ]; then
		:
		#echo "No Updates"
		#Uncomment the above line to change things up, but don't forget the comment out the line above it
	else
		echo "${ICON}  ${LINES}"
		clean
	fi
}

function clean() {
	rm -f ${CURDIR}${FILE}
}

while true; do 
	main
	sleep 30 
done
