#!/bin/bash

xrdb ~/.Xresources
#xmodmap ~/.Xmodmap 
setxkbmap -option caps:escape

exec i3

export DISPLAY=:0
xinput set-int-prop 11 "Device Enabled" 8 0

autocutsel -fork &
autocutsel -selection PRIMARY -fork &
