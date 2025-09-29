#!/bin/bash

# This script should be run as root because the commands require superuser access to run

# Set up regular variables
if [ ! -e "./includes/o-header.sh" ]; then
	echo "Can't find ./includes/o-header.sh"
	exit 1
fi
source ./includes/o-header.sh

GOODVOLT="1.20"
COREVOLT=$(/opt/vc/bin/vcgencmd measure_volts core | cut -c6-9)
if [[ "$COREVOLT" != "$GOODVOLT" ]]; then
	COREWARN="CORE VOLTAGE WARNING! ($COREVOLT) ($TIME)"
fi

echo "Voltage: $COREVOLT (Good is: $GOODVOLT)"

exit 0
