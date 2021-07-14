# **Managing Individual Linux Processes**

A `Linux` system is a collection of processes.

// killing a rogue process (in this eg, we created the rogue process using `stress`):
    
    $ stress -c 1 &
    $ ps -ef | grep stress
    $ top
    While in `top` command, use `s` to make the result refresh option and `r` for renice option to prioritize processes
    kill -9 <pid>

// another way to set renice during start:
    
    $ nice -n 19 stress -c 1 &
    $ ps -ef | grep <process>
    $ renice -n <priority number> <pid> // to reset nice

// to check scheduling priority available: 

    $ chrt --max
    // to set FIFO chart scheduling of our stress:
    $ chrt -f -p 45 <pid>
    $ chart -p <pid>

// another way to kill process: 

    $ pgrep <process>
    $ pkill <process>