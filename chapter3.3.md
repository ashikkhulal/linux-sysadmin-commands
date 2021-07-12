# **CRON - task scheduling in Linux**

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

    `* * * * *` for every minute
    
    `0 * * * *` for every hour
    
    `*/5 * * * *` for every 5 minutes
    
    Note: make sure you pick the value that ranges into the sequences you pick without putting the remainders (eg. `*/10 * * * *` instead of `*/7 * * * *`)
    
    `30 9-17 * *` MON-FRI for Nine Thirty AM and Five Thirty PM Monday to Friday
    
    `10 11 12-17 *` WED at 11:10 AM of every wednesday that occurs between 12th and 17th of every month  