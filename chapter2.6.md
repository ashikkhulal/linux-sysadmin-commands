# **Chapter 2.6: Archiving, Compressing and Decompressing Files in Linux**

// to archive files or directory

    $ tar
    eg. $ tar cvf /home/archives/user1.tar user1
    eg. $ tar tvf /home/archives/user1.tar // to list archive file
    eg. $ tar cvfz /home/archives/user1.tar.gz user1 // to archive and compress gzip file
    eg. $ tar xvfj /home/archives/user1.star.bz2 // to uncompress and unarchive bzip2 file 

// to archive files or directory

    star
    eg. $ star -cv file=/home/archives/user1.star user1
    eg. $ star -tv file=/home/archives/user1.star // to list archive file
    eg. $ star -cv -bz file=/home/archives/user1.star.bz2 user2 // to archive and compress file

// to compress files or directory

    $ gzip
    eg. $ gzip /home/archives/user1.tar // for already compressed file


// to compress files or directory

    $ bzip2
    eg. $ bzip2 /home/archives/user1.tar // for already archived file
    eg. $ bzip2 -d /home/archives/user1.tar.bz2 // to uncompress file

// to check disk memory free

    $ df -h

// to check disk usage
    
    $ du -hT