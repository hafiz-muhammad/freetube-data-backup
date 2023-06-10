#!/bin/bash

# GitHub: https://github.com/hafiz-muhammad

# Set directory for scripts.
SCRIPTS_DIR="$(dirname "$0")/scripts"

# Displays menu options.
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

# Displays menu.
menu

# Prompts the user to enter a choice between 0-2 and reads the input.
read -p "Enter your choice (0-2): " CHOICES

# Handles user's choice.
case $CHOICES in
1)
    echo -e "\nOption 1: Backup FreeTube Data (Linux) chosen. Executing the 'ft-linux-backup.sh' script...\n"
    # Makes ft-linux-backup.sh executable.
    chmod +x "$SCRIPTS_DIR/ft-linux-backup.sh"
    # Executes ft-linux-backup.sh
    "$SCRIPTS_DIR/ft-linux-backup.sh"
    # Restarts the current script.
    exec "$0"
    ;;
2)
    echo -e "\nOption 2: Backup FreeTube Data (Flatpak) chosen. Executing the 'ft-flatpak-backup.sh' script...\n"
    # Makes ft-flatpak-backup.sh executable.
    chmod +x "$SCRIPTS_DIR/ft-flatpak-backup.sh"
    # Executes ft-flatpak-backup.sh
    "$SCRIPTS_DIR/ft-flatpak-backup.sh"
    # Restarts the current script.
    exec "$0"
    ;;
0)
    echo -e "\nExited"
    exit
    ;;
*)
    echo "Invalid choice. Enter a number from 0 to 2."
    ;;
esac
