#!/bin/sh
yabai -m query --windows | jq 'group_by(.space)'
