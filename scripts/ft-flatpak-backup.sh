#!/bin/sh

# GitHub: https://github.com/hafiz-muhammad

# Set directory for backup files.
BACKUP_DIR="$HOME/Backups/FreeTube/Flatpak"

# Creates backup directory if it does not exist.
if [ ! -d "$BACKUP_DIR" ]; then
  mkdir -p "$BACKUP_DIR"
  # Displays a message confirming the creation of the backup directory.
  echo "Directory $BACKUP_DIR created."
else
  # Displays a message if the backup directory already exists.
  echo "Directory $BACKUP_DIR already exists."
fi

# Copies files to the backup directory.
copy_file() {
  # Source file path.
  SRC="$1"
  # Destination file path in the backup directory.
  DST="$BACKUP_DIR/$(basename "$1")"

  # Checks if the copy was successful.
  if cp "$SRC" "$DST"; then
    # Displays a message confirming the backup.
    echo "$SRC has been backed up."
  else
    # Displays a message if the backup failed.
    echo "$(basename "$SRC") backup has failed."
  fi
}

# Copies FreeTube data files to the backup directory.
copy_file ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/history.db
copy_file ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/playlists.db
copy_file ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/Preferences
copy_file ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/profiles.db
copy_file ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube/settings.db
