#!/bin/bash
# Set environment variables for restic
export RESTIC_PASSWORD="aa"
export RESTIC_REPOSITORY="sftp:tb@192.168.56.101:/home/tb/restic-repository"

# Set the source directory to back up (the user's home directory)
SRC_DIR="/home"

# Run restic backup
restic backup $SRC_DIR

# Check if the backup was successful
if [ $? -eq 0 ]; then
  echo "Backup completed successfully."
else
  echo "Backup failed."
fi
