#!/bin/sh
~/.config/polybar/start.sh green # Esto es para la barra de arriba
picom --config ~/.config/picom/picom.conf & # esto es para la transparencia
feh --bg-fill $1 # esto es para el fondo de pantalla
