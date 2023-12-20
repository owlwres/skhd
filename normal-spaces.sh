#!/bin/sh
echo $(yabai -m query --spaces | jq 'map(select(.["native-fullscreen"] == 0))') 
