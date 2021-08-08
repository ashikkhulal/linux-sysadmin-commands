# **Chapter 3.2: CRON - Task Scheduling in Linux**

A crontab file contains instructions for the cron(8) daemon in the following simplified manner: "run this command at this time on this date". Each user can define their own crontab. Commands defined in any given crontab are executed under the user who owns that particular crontab. Uucp and News usually have their own crontabs, eliminating the need for explicitly running su(1) as part of a cron command.
Blank lines, leading spaces, and tabs are ignored. Lines whose first non-white space character is a pound-sign (#) are comments, and are not processed. Note that comments are not allowed on the same line as cron commands, since they are considered a part of the command. Similarly, comments are not allowed on the same line as environment variable settings.

An active line in a crontab is either an environment setting or a cron command. An environment setting is of the form:

    name = value

// list entries in crontab

    $ crontab -l

// opens crontab in default editor and you can also edit and create a new file

    $ crontab -e

// select crontab editor

    $ select-editor

// In the opended default editor file, you just enter your lines at the bottom

// deletes existing crontab

    $ crontab -r

// you can edit another user's crontab with this command 

    $ crontab -u
    eg: sudo crontab -u <user> -r

// About crontab specification

|Minute   |Hour     |Date     |Month    |DOW      |
|---------|---------|---------|---------|---------|
|0-59     |         |         |  1-12   |0-7      |
|         |         |         |   OR    |   OR      |
|         |         |         | JAN-DEC |     SUN-SAT    |
|*        |*        |*        |*        |    *     |
|   12,46      |  1,2,20       |  7,29       |    MAR,AUG     |     3,5    |
|34-56|6-12|7-14|3-8|MON-FRI|

// Examples

for every minute:
|Minute   |Hour     |Date     |Month    |DOW      |
|---------|---------|---------|---------|---------|
|*        |*        |*        |*        |    *    |

for every hour:    
|Minute   |Hour     |Date     |Month    |DOW      |
|---------|---------|---------|---------|---------|
|0        |*        |*        |*        |    *    |

for every 5 minutes:
|Minute   |Hour     |Date     |Month    |DOW      |
|---------|---------|---------|---------|---------|
|*/5      |*        |*        |*        |    *    |
  
Note: make sure you pick the value that ranges into the sequences you pick without putting the remainders (eg. `*/10 * * * *` instead of `*/7 * * * *`)

for Nine Thirty AM and Five Thirty PM Monday to Friday:
|Minute   |Hour     |Date     |Month    |DOW      |
|---------|---------|---------|---------|---------|
|30       |9-17     |*        |*        |MON-FRI  |

At 11:10 AM of every wednesday that occurs between 12th and 17th of every month:
|Minute   |Hour     |Date     |Month    |DOW      |
|---------|---------|---------|---------|---------|
|10       |11       |12-17    |*        |WED      |

for every 3 hours:
|Minute   |Hour     |Date     |Month    |DOW      |
|---------|---------|---------|---------|---------|
|0        |*/3        |*        |*        |    *    |

At minute 30 past every 3rd hour from 1 through 23: 
|Minute   |Hour     |Date     |Month    |DOW      |
|---------|---------|---------|---------|---------|
|30        |1/3        |*        |*        |    *    |

Online crontab guru: https://crontab.guru/



