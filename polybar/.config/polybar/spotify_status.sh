#!/bin/bash

# Check if Spotify is running
if ! pgrep -x spotify > /dev/null; then
  echo ""
  exit 0
fi

# Get playback status and metadata
status=$(playerctl --player=spotify status 2>/dev/null)
artist=$(playerctl --player=spotify metadata artist 2>/dev/null)
title=$(playerctl --player=spotify metadata title 2>/dev/null)

# Combine and truncate if needed
display="${artist} - ${title}"
maxlen=30
if [[ ${#display} -gt $maxlen ]]; then
  display="${display:0:$maxlen}..."
fi

# Choose play/pause icon
if [[ "$status" == "Playing" ]]; then
  icon="%{T1}%{T-}"  # pause
else
  icon="%{T1}%{T-}"  # play
fi

# Output
echo "${icon} ${display}"

