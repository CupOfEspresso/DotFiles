#!/bin/bash
#this script reload the neofetch every few seconds

FETCH="neofetch"
FLAG=" --ascii_colors 2 2 --colors 2 4 4 4 2 4 --bold on --color_blocks off && printf '\n' "

while true; do
clear
$FETCH$FLAG
sleep 120
done
