#!/bin/bash

date=$(date "+%Y-%m-%d %H:%M:%S")

if [[ $(wget -q --tries=10 --timeout=20 --spider http://google.com) -eq 0 ]]; then
	output="$date,online"
else
	output="$date,offline"
fi

echo "$output" | tee -a "$HOME/internet-check.csv" >> /dev/null

exit 0
