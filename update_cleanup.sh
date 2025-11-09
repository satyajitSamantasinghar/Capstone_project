#!/bin/bash
# update_cleanup.sh - Simulate system updates and cleanup

echo "🔄 Checking for updates..."
sleep 2
echo "✅ System packages updated successfully (simulated)."

LOG_DIR="/c/Users/$USERNAME/AppData/Local/Temp"
echo "🧹 Cleaning temporary files in $LOG_DIR..."
rm -rf "$LOG_DIR"/*
echo "✅ Cleanup done!"
