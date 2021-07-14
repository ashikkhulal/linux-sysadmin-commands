# **Managing Tuned Profiles on RHEL8**

The Tuned service is an intelligent application that uses system monitoring to optimize system performance for specific types of workloads.

The heart of Tuned are Tuning profiles.

// Tuned Profile Locations:

    /etc/tuned/tund-main.conf : this is the main configuration file for Tuned.

    /etc/tuned : Location for custom profiles. Overrides /usr/lib/tuned configurations with the same name.

    /usr/lib/tuned : Distribution-specific profiles, each stored in its own subdirectory. Each profile has its own tuned.conf configuration file.

// example on how to change tuned profile to powersave:

    $ sudo -i
    $ ls -al /etc/tuned
    $ ls -al /usr/lib/tuned  // each profile has their own configuration
    $ tuned-adm --help // for tuned help
    
    $ tuned-adm active // to see active tuned profile
    $ tuned-adm list profiles // list of availabe profiles
    $ tuned-adm profile powersave // to change profile
    $ tuned-adm active // verify profile change
    
    $ tuned-adm recommend // to see recommendation for profile
    
    $ tuned-adm profile powersave virtual-guest // to change to 2 profiles
    $ tuned-adm active // verify profile change

    // you can have tuned actively look at the system and adjust things:
    $ grep dynamic_tuning /etc/tuned/tuned-main.conf
    $ change it to 1 using vi/vim.
    $ systemctl restart tuned
    $ grep dynamic_tuning /etc/tuned/tuned-main.conf  // verify
