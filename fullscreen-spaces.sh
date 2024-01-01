#!/bin/sh
yabai -m query --spaces | jq 'map(select(.["is-native-fullscreen"]))' | jq 'sort_by(.index)'
