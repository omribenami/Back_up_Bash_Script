# home assistant backup bash

***home assistant backup is based on https://github.com/dimagoltsman amazing work u should check it out***

home assistant backup bash script is a simple tool for backing up home assistant directory, docker-compose file and home/{$user}/bin directory (or basiclly anything you would like) into home/{$user}/homeassistant_backup directory on a daily basis and once a week into google drive using 'gupload'. it will also create a log file to monitor all backup processes (can be found on the /bin/ directory).

## depandencies:
* gupload
* google api account 

## instructions:
1. Download HA_backup directory.
2. create the 'bin' and 'homeassistant_backup' directories in your $user folder:

       $  mkdir ~/bin/ 
       $  mkdir ~/homeassistant_backup/ 

3. change all personal parameters on each file inside HA_Backup directory ($user directory name, backup folders, folder ID etc.)
4. move all files from 'HA_backup' directory to your new 'bin' directory.
5. for each file run the next command:

       $ Sudo chmod +x 

### Example:

       $ Sudo chmod +x ~/bin/1stwom_backup.sh 

6. add the 'crontab' schedule as followed below

       $ Sudo crontab -e 

Crontab configuration:

```ruby
 # m  h  dom mon dow   command
   00 3   *   *   *    bash ~/bin/internal_backup.sh
   00 4   1   *   *    bash ~/bin/1stwom_backup.sh
   00 4   8   *   *    bash ~/bin/2ndwom_backup.sh
   00 4   15  *   *    bash ~/bin/3rdwom_backup.sh
   00 4   22  *   *    bash ~/bin/4thwom_backup.sh
```

7. You're done! And your data is safe! enjoy Life 👍

## Links:

1. gupload - https://github.com/cirocosta/gupload

2. google api account - https://console.developers.google.com/apis/dashboard?project=gapc-248614

3. gdriveBackuScript - https://github.com/dimagoltsman/my-home/blob/master/gdriveBackuScript
