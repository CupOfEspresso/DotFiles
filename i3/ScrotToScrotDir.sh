#!/bin/bash

# this script makes a screenshot and moves it to a give directory
# SD = dir where the screenshot goes by default
# MD = dir where you want the screenshot to go

SD=~/*.png
MD=/home/$USER/pictures/Screenshot

scrot 

mv $SD $MD

