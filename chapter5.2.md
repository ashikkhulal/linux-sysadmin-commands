# **Chapter 5.2: Managing Mounted Disks**

**Persistent Mounts:** Mounts that are configured to mount automatically, such as at boot time or when a request to mount all file systems is issued. They ensure our system is configured to survive routine processes, such as reboot.

**How to configure persistent mounts?**

Just add mounts to `/etc/fstab` to ensure persistence.

**How do we define devices persistently?**

Two options:

- FILE SYTEM IDENTIFIERS
  - Identifies a file system on a block device
  - File system UUID
  - File system Label

- DEVICE IDENTIFIERS
  - Identifies a block device
  - World Wide Identifier (WWID)
  - Partition UUID
  - Device Serial Number


// check the mount:
  
    $ mount | grep <folder>
    $ lsblk
    $ blkid | grep <name>  // to check UUID
    $ df -hk

// mount after making persistent in /etc/fstab:
  
    $ umount <folder> ; mount -a 
