#!/bin/bash
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
echo -e "Please enter the governor speed: \nperformance\npowersave\nondemand\nor\nconservative"
read governor
sudo cpupower frequency-set --governor $governor

