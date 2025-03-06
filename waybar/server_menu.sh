#!/bin/bash

STATE_FILE="/tmp/waybar_server_menu_state"
STATE=$(cat "$STATE_FILE" 2>/dev/null || echo "collapsed")

if [[ "$1" == "toggle" ]]; then
  if [[ "$STATE" == "collapsed" ]]; then
    echo "expanded" > "$STATE_FILE"
  else
    echo "collapsed" > "$STATE_FILE"
  fi
fi

# Output for Waybar
if [[ "$STATE" == "expanded" ]]; then
  echo '{"text": " Close Menu", "class": "expanded"}'
else
  echo '{"text": " Server Menu", "class": "collapsed"}'
fi
