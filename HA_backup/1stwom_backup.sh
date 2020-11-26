#!/bin/bash

# this bash script is in charge on your first week of month Google Drive backup

echo "begining backup process........"
cd ~/homeassistant_backups
export GZIP=-9
echo "compressing homeassistant and docker directories...."
tar  --exclude='*.db' -cvzf  "1stwom_backup.tar.gz" ~/{bin,homeassistant,docker}  # enter any directory you like to add to your backup file, HA database is excluded to reduce file size (--exclude='*.db')
echo "finished compressing files"
folder_id="1ZSvypeaTPXf4rZX74ySFbtAAOs1I7HkR" # this folder id will be used to upload your backup to a specific directory on Google Drive, for more info check gupload git
echo "uploading files to your google account...."
~/.google-drive-upload/bin/gupload --config ~/.googledrive.conf -o -r "$folder_id" "1stwom_backup.tar.gz" # gupload upload command (-o stands for overwrite) 
echo "backup process is done" 
echo "$(date) - 1st week of month backup has been uploaded to Gdrive successfully" >> ~/homeassistant_backups/backup.log # adds the date this process ran to the log file
