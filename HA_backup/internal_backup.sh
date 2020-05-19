#!/bin/bash

# this bash script is in charge on your daily local backup

# var
dt=`date +%d-%m-%Y_%H-%M-%S` # date structure
filename="backup_$dt.tar.gz" # backup file name with current date added by dt variable

echo "begining backup process........"
cd ~/homeassistant_backups 
export GZIP=-9
echo "compressing homeassistant and docker directories...."
sudo tar  --exclude='*.db' -cvzf  "$filename" ~/{bin,homeassistant,docker} # enter any directory you like to add to your backup file, HA database is excluded to reduce file size (--exclude='*.db')
echo "finished compressing files"
echo "backup process is done" 
find ~/homeassistant_backups/*.tar.gz -mtime +3 -exec rm {} \; # old files deletion command. currently set to delete any file older then 3 days (you can change it by changing the number 3)
echo "old backups have been removed removed"
echo  "$(date)- internal backup created, older backups removed" >> ~/homeassistant_backups/backup.log # adds the date this process ran to the log file
