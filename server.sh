#!/bin/bash

# Copyright © 20XX Flames Co. All rights reserved.

# Define local and OneDrive directories
LOCAL_DIR="$HOME"
ONEDRIVE_DIR="$HOME/OneDrive"

# List of directories to move
DIRS=("Documents" "Desktop" "Downloads" "Pictures" "Music" "Movies")

# Move directories and create symbolic links
for dir in "${DIRS[@]}"; do
    # Move each directory to OneDrive
    if [ -d "$LOCAL_DIR/$dir" ]; then
        mv "$LOCAL_DIR/$dir" "$ONEDRIVE_DIR/"
    fi

    # Create a symbolic link from the original location to the new location in OneDrive
    ln -s "$ONEDRIVE_DIR/$dir" "$LOCAL_DIR/$dir"
done

echo "Directories moved and linked to OneDrive."

# Reminder to manually adjust iCloud settings
echo "Please manually adjust your iCloud settings to stop syncing the moved folders."
