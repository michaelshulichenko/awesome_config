#!/bin/bash
# Disable screensaver while zoom meeting is running
export DISPLAY=:0

ZOOM_MEETING_WINDOW="Zoom Meeting";
ZOOM_IS_RUNNING=$(wmctrl -l | grep -i "${ZOOM_MEETING_WINDOW}");


if [[ ! -z "${ZOOM_IS_RUNNING}" ]]; then
	# echo "Zoom meeting in process";
	xscreensaver-command -deactivate >&- 2>&- &
else
	# echo "No zoom meeting detected"
fi

exit $?;
