# **Chapter 2.2: Using System Documentations**

// System documentation 

    $ man <service/commands>
    eg. $ man httpd

    $ info <service/commands>
    eg. info mariadb
    $ ls -al /usr/share/doc | egrep -i "service/commands"
    eg.	$ ls -al /usr/share/doc | egrep -i "httpd|mariadb|mysql" // if you get any hits from ls -al /usr/share/doc command, cd into that directory with specific grep output to find more documentations
    
    $ <service/commands> --help
    eg. $ mariadb --help
    $ <service/commands> -?
    eg. $ mariadb -?
    
    $ whatis <service/commands>
    eg. $ whatis httpd
    
    $ apropos <service/commands>
    eg. apropos httpd

    $ man <page from apropos> <detailed service/commands from apropos>
    eg. $ man 8 httpd.service
