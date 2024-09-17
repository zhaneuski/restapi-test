SHELL=/bin/bash
BASH_ENV=/etc/environment

# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name command to be executed

* * * * * root /usr/local/bin/php /var/www/site/artisan schedule:run > /proc/1/fd/1 2>/proc/1/fd/2

# An empty line is required at the end of this file for a valid cron file.
