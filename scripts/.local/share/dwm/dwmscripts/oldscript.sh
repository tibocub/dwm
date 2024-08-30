#!/usr/bin/env bash

#Set background as black 
xsetroot -solid "#0f0e13" &

#Tap to click
xinput set-prop 10 316 1

#Natural scrolling
xinput set-prop 10 324 1

#Hide cursor
unclutter --timeout 2.5 --jitter 6 --ignore-scrolling &

#Get time and date in status bar
status() {
	date +"%d-%m-%Y | %H:%M %Z"
}

while true; do
	xsetroot -name "$(status)"
	sleep 1m
done

./usr/local/bin/dwm
