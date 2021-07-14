# **Understanding Logging and Using Persistent Journals on RHEL 8**

- **The /var/log directory:** The old-school directory for `system and application logs`
- **journalctl:** Utility to query the `systemd journal`
- **Persistent Journals:** Configure `systemd-journald` to log to disk so journals persist across reboots.

// to check var/logs:

    $ ls -al /var/logs  
    $ grep <what to find> `find /var/log -maxdepth 1 -type f -print` | less

// to use journalctl:

    $ journalctl --help
    $ journalctl -u <what to find>
    $ journalctl -g <what to find> | less
    $ journalctl -g "kernel|systemd" | less  // to find multiple units
    $ journalctl      // to check time when logs began
    $ journalctl -S 4:25:00 -U 4:26:00  // to find logs during specific time
    $ journalctl --list-boots         // to see boots

// Storage of journalctl logs:

    $ grep -i storage /etc/systemd/journald.conf
    Four kinds of Logging Modes/Locations:
    - Volatile: /run/log/journal
    - Persistent: /var/log/journal
    - None: storage disabled, all data dropped
    - Auto: default - persistent if /var/log/journal exists, otherwise volatile

// To make journals persistent:

    $ mkdir /var/log/journal
    $ journalctl --flush
    $ systemctl restart chronyd // if before command doesn't pick up
    