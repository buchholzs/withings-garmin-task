# withings-garmin-task
The script sync-garmin.bat uses the script sync.pl from the Git Project 
https://github.com/jaroslawhartman/withings-garmin-v2
to read the last few days from the Withings website and to transfer them to Garmin Connect.

It uses the configuration file setenv.bat for the username and password.
You shall copy setenv.bat.template to setenv.bat and modify it for your purposes.

Before you can use the batch file, you should execute sync.pl in its home directory to store the access token.

In the project [wiki page](https://github.com/buchholzs/withings-garmin-task/wiki/How-to-schedule-a-task-for-regularly-syncing-the-weight-from-Withings-to-Garmin), I show you how to schedule a task with Windows 10 task scheduler to sync your weight every week.
