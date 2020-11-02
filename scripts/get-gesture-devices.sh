#!/bin/bash

line_no=$(libinput list-devices | grep -n "gesture" | cut -f1 -d:)

if [ -z "$line_no" ]; then
	echo "No input device that supports gestures was found."
	exit 1
fi

s=$((line_no - 5))
e=$((line_no + 12)) 

libinput list-devices | sed -n "$s","$e"p

