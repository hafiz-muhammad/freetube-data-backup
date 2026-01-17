#!/bin/sh

# GitHub: https://github.com/hafiz-muhammad

# Set back up directory
BACKUP_DIR="$HOME/Backups/FreeTube/Linux"

# Check if backup directory ($BACKUP_DIR) exists
if [ ! -d "$BACKUP_DIR" ]; then
  mkdir -p "$BACKUP_DIR"
  echo "Directory $BACKUP_DIR created."
else
  echo "Directory $BACKUP_DIR already exists."
fi

# Backs up specified data files to $BACKUP_DIR
copy_file() {
  SRC="$1"
  DST="$BACKUP_DIR/$(basename "$1")"
  if cp "$SRC" "$DST"; then
    echo "$SRC has been backed up."
  else
    echo "$(basename "$SRC") backup has failed."
  fi
}

# Copy essential FreeTube data files
copy_file ~/.config/FreeTube/history.db
copy_file ~/.config/FreeTube/playlists.db
copy_file ~/.config/FreeTube/Preferences
copy_file ~/.config/FreeTube/profiles.db
copy_file ~/.config/FreeTube/settings.db
