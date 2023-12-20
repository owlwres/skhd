#!/usr/bin/env zsh
TF_SPACE_INDEX=~/skhd/current_space_index &&
current_space_index=$(cat $TF_SPACE_INDEX) &&
plus_space_index=$(awk '{print $0+1}' <<< $current_space_index) &&
~/skhd/focus-space-index.sh "$plus_space_index"

