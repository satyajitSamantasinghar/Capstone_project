#!/bin/bash
# backup.sh - Backup important system files

BACKUP_SRC="/c/Users/$USERNAME/Documents"
BACKUP_DEST="/c/Users/$USERNAME/Backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DEST/backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DEST"
tar -czf "$BACKUP_FILE" "$BACKUP_SRC"

echo "✅ Backup completed: $BACKUP_FILE"
