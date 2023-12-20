#!/usr/bin/env zsh
TF_SPACE_INDEX=~/skhd/current_space_index
spaces=$(~/skhd/fullscreen-windows.sh) &&
desired_window_id=$(jq ".[$1].id" <<< "$spaces") &&
~/skhd/focus-window-id.sh ${desired_window_id}
