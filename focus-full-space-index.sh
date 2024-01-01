#!/usr/bin/env zsh
CURRENT_SPACE_ID=$(<~/yabai/current-space.json)
fullscreen_spaces=$(~/skhd/fullscreen-spaces.sh)
desired_space_id=$(jq ".[$1].id" <<< ${fullscreen_spaces}) 
if [[ $CURRENT_SPACE_ID -eq $desired_space_id ]]; then
  ~/yabai/go-last-space.sh
  exit
fi

fullscreen_windows=$(~/skhd/fullscreen-windows.sh)
desired_window_id=$(jq ".[$1].id" <<< "$fullscreen_windows")
~/skhd/focus-window-id.sh ${desired_window_id}
