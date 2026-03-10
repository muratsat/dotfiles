#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle Dark theme
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🌓

osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to not dark mode'

~/.config/alacritty/toggle-dark-theme
