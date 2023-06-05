#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -r center &
polybar -r rigth &
polybar -r left &

echo "Polybar lansada..."
