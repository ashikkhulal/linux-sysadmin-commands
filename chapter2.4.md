# **Chapter 2.4: Manipulating Text Files in Linux**

// to make directory

    $ mkdir <directory_name>
    eg. $ mkdir logs

// to make a directory with a parent directory

    $ mkdir -p <parent_dir_name>/<child_dir_name>
    eg. $ mkdir -p logs/raw_logs

// to create a file 

    $ touch <filename>

// to display into tree format
    
    $ tree .

// grep  searches  for  PATTERN in each FILE

    $ grep
    eg. $ sudo grep httpd /var/log/* > logs/raw_logs/master.log 2> logs/raw_logs/error.log // 2 represents standard error

// like grep, egrep also searches  for  PATTERN in each FILE

    $ egrep
    $ egrep -v // excludes that
    eg. $ egrep -v "dnf|secure" raw_logs/master.log > httpd_logs/no_dnf_secure.log

// Print newline, word, and byte counts for each FILE, and a total line if more than one FILE is specified

    $ wc -l 
    eg. $ wc -l logs/raw_logs/master.log

// display a line of text

    $ echo

// to overwrite a file content

    $ echo hello > abc.txt

// to append a file content

    $ echo world >> abc.txt

// used to query the contents of the systemd

    eg. $ journalctl --unit=httpd --no-pager >> logs/raw_logs/master.log

// to create a backup of a file

    use cp command or tar/star commands

// for a backup of a folder, you can either copy a folder or use make a tar ball of the folder


