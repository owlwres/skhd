#!/bin/sh
yabai -m query --windows | jq 'map(select(.["is-native-fullscreen"]))' | jq 'sort_by(.space)'
