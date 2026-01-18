![screenshot](/screenshots/screenshot.png)

[FreeTube's Data Location Documentation](https://docs.freetubeapp.io/usage/data-location/)


Make ```backup-freetube.sh``` executable by running the following command in the terminal:
```console
chmod +x ~/freetube-data-backup/backup-freetube.sh
```
**Note:** Once option 1 or 2 is selected `ft-flatpak-backup.sh` and `ft-linux-backup.sh` inside the `scripts` folder will be made executable, so there is no need to manually change their permissions using `chmod`.

<br>
<br>

- **Option 1:** Select this option if you installed FreeTube on Linux using .deb/.rpm packages, AppImage, AUR, or .zip/.7z archive files on Linux.

- **Option 2:** Select this option if you installed FreeTube using the Flatpak package.

<br>
<br>

Files that will be backed up: **profiles.db**, **settings.db**, **playlists.db**, **history.db**,**search-history.db**, **subscription-cache.db**, and **Preferences**

<br>

The backed up files will be stored in the directory `$HOME/Backups/FreeTube/Linux` or `$HOME/Backups/FreeTube/Flatpak` based on the option that you choose.
