#!/bin/bash

SERVICE='ssh' 
# Find the directory where THIS script is stored
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

if pgrep "$SERVICE" > /dev/null
then
    echo "$SERVICE is running"
else
    echo "$SERVICE is DOWN! Attempting to restart..."
    echo "$(date): $SERVICE was down and alert was triggered" >> "$SCRIPT_DIR/guard_log.txt"
fi