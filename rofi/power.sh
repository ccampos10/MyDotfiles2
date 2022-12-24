#!/usr/bin/env bash
#options="one
#two
#three"
#theme=${1:-$HOME/.config/rofi/config.rasi}
#selection=$(echo -e "${options}" | rofi -dmenu -config $theme -normal-window)
#case "${selection}" in
#	"one")
#	notify-send "run_rofi.sh" "one";;
#	"two")
#	notify-send "run_rofi.sh" "two";;
#	"three")
#	notify-send "run_rofi.sh" "three";;
#esac

opciones="PowerOff\nReboot\nExit Qtile"
#echo -e "${opciones}"

#echo "$1"
if test "$1";
then
	if test "$1" = "PowerOff";
	then
		#poweroff
		sudo poweroff
	elif test "$1" = "Reboot";
	then
		#reboot
		sudo reboot
	elif test "$1" = "Exit Qtile";
	then
		# (codigo de exit qtile)
		qtile cmd-obj -o cmd -f shutdown
	else
		echo -e "${opciones}"
	fi
else
	echo -e "${opciones}"
fi
