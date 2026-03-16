#!/bin/bash

SERVICE='ssh' # I use ssh because it is usually running in my VM, but you can change it to any other service that is running

if pgrep "$SERVICE" > /dev/null
then
    echo "$SERVICE is running"
else
    echo "$SERVICE is DOWN! Attempting to restart..."
    # In a real DevOps scenario, we would use: sudo systemctl start $SERVICE
    echo "$(date): $SERVICE was down and alert was triggered" >> guard_log.txt
fi