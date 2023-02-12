#!/usr/bin/bash
startxwin >/dev/null 2>&1 &
export DISPLAY=:0.0
sleep 3
asciio "$1"
