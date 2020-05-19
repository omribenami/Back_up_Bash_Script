ben-ami@benami-HomeServer-X230:~$ crontab -e
  GNU nano 4.8                                                                                                               /tmp/crontab.tFkaqJ/crontab
# Edit this file to introduce tasks to be run by cron.
#
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
#
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').
#
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
#
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
#
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
#
# For more information see the manual pages of crontab(5) and cron(8)
#
# m  h  dom mon dow   command
  00 3   *   *   *    bash ~/bin/internal_backup.sh
  00 4   1   *   *    bash ~/bin/1stwom_backup.sh
  00 4   8   *   *    bash ~/bin/2ndwom_backup.sh
  00 4   15  *   *    bash ~/bin/3rdwom_backup.sh
  00 4   22  *   *    bash ~/bin/4thwom_backup.sh








