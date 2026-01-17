#!/bin/bash

# GitHub: https://github.com/hafiz-muhammad

# Set directory for backup scripts
SCRIPTS_DIR="$(dirname "$0")/scripts"

# Display menu
menu() {
    echo ""
    echo "---------------------------------------------------"
    echo "|            FreeTube Data Backup Menu            |"
    echo "---------------------------------------------------"
    echo "|                                                 |"
    echo "|     1.     Backup FreeTube Data (Linux)         |"
    echo "|     2.     Backup FreeTube Data (Flatpak)       |"
    echo "|     0.     Exit                                 |"
    echo "|                                                 |"
    echo "---------------------------------------------------"
    echo -e "\nIf you installed FreeTube using the .deb and .rpm packages, AppImage, AUR, or .zip/.7z archive files on Linux, choose '1'.\n"
    echo -e "If you installed FreeTube using the Flatpak package, choose '2'.\n"
    echo ""
}

menu

# Read user's menu selection
read -p "Enter your choice (0-2): " CHOICES

case $CHOICES in
1)
    # Run backup script for non-Flatpak installs (package managers, AppImage, AUR, .zip, .7z)
    echo -e "\nOption 1: Backup FreeTube Data (Linux) chosen. Executing the 'ft-linux-backup.sh' script...\n"
    chmod +x "$SCRIPTS_DIR/ft-linux-backup.sh"
    "$SCRIPTS_DIR/ft-linux-backup.sh"
    exec "$0"
    ;;
2)
     # Run backup script for Flatpak installations
    echo -e "\nOption 2: Backup FreeTube Data (Flatpak) chosen. Executing the 'ft-flatpak-backup.sh' script...\n"
    chmod +x "$SCRIPTS_DIR/ft-flatpak-backup.sh"
    "$SCRIPTS_DIR/ft-flatpak-backup.sh"
    exec "$0"
    ;;
0)
    # Exit the menu
    echo -e "\nExited"
    exit
    ;;
*)
    # Handle invalid input
    echo "Invalid choice. Enter a number from 0 to 2."
    ;;
esac
