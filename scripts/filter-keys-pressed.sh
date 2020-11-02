#!/bin/sh

if [ -z "$1" ]; then
	echo "An argument needs to be provided to be filtered."
	exit 1
fi 

if [ -f "$1" ]; then
	cat $1 | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'
else
	echo "The argument provided needs to be a file."
	exit 1
fi
