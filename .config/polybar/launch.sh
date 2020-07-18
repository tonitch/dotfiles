#!/bin/sh

killall -q polybar

polybar bspbar >> /tmp/polybar1.log 2>&1 &

echo "Bars launched..."
