# **Chapter 2.1: Accessing Linux Systems**

// check an ip address
    
    $ ip a s

// to be root

    $ su - root
    $ su - <user>
    $ sudo -i
    $ sudo <command>

// to generate ssh key

    $ ssh-keygen
    $ ssh-keygen -t rsa

// to copy ssh-key to another server

    $ ssh-copy-id <user>@<other server Pip>

// to verify successful ssh connection

    $ ssh <user>@<other server Pip>

// to check RHEL OS version

    $ cat /etc/redhat-release

// to do sftp

    $ sftp <user>@<other server Pip>
    ? or help for commands

// sftp for server copy 
    
    $ mget <filename>
    $ quit  //to quit 


