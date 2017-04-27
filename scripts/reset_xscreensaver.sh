#!/bin/bash
# Disable screensaver while zoom meeting is running

ZOOM_MEETING_WINDOW="Zoom Meeting";
ZOOM_IS_RUNNING=$(wmctrl -l | grep -i "${ZOOM_MEETING_WINDOW}");

if [[ ! -z "$ZOOM_IS_RUNNING" ]]; then 
	echo "Zoom meeting in process";
	/usr/bin/xset s reset
fi

exit 0;
