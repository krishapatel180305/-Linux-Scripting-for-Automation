#!/bin/bash

# This script creates a timestamped backup of a directory.

# Define variables
SOURCE_DIR="/var/www/html"
BACKUP_DIR="/var/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="website-backup-$TIMESTAMP.tar.gz"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create a compressed archive of the source directory
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$SOURCE_DIR"

echo "Backup of $SOURCE_DIR completed successfully! Saved to $BACKUP_DIR/$ARCHIVE_NAME"
