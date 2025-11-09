#!/bin/bash
# log_monitor.sh - Monitor log file for errors

LOG_FILE="/c/Users/satya/Documents/system.log"
KEYWORDS=("error" "fail" "warning")

# Create file if not found
if [ ! -f "$LOG_FILE" ]; then
  echo "Creating new log file at: $LOG_FILE"
  echo "System initialized successfully" > "$LOG_FILE"
fi

echo "Monitoring $LOG_FILE for issues..."
while read -r line; do
  for keyword in "${KEYWORDS[@]}"; do
    if [[ $line == *"$keyword"* ]]; then
      echo "Found issue: $line"
    fi
  done
done < "$LOG_FILE"
 