#!/bin/bash

# This script should be run as root because the commands require superuser access to run

# Set up regular variables
if [ ! -e "./includes/o-header.sh" ]; then
	echo "Can't find ./includes/o-header.sh"
	exit 1
fi
source ./includes/o-header.sh

MAXTEMP=55
TEMP=$(/opt/vc/bin/vcgencmd measure_temp | cut -c6-7)

echo "Temperature: $TEMP (Max: $MAXTEMP)"

exit 0
