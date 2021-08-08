# **Managing File System on RHEL 8**

// types of file systems:

    xfs:
    - very large files and file systems
    - sizable systems running enterprise workloads
    - parallel workloads
    - default file system for RHEL 8
    - can grow file system online, but not shrink
    - maximum size: 1 PiB (certified)

    ext4:
    - smaller files and file systems
    - systems with limited I/O capabilities
    - CPU-bound workloads
    - latest generation of the ext file system
    - can grwo file system online as well as shrink
    - maximum size: 50 TiB (certified)

    vfat:
    - works with many operation systems
    - greate for sharing files across different operating systems
    - supports windows' long file names
    - maximum size: 16 TiB (theoretical)

// make ext4 file share:

    mkfs.ext4 <device-name>
    fsck.ext4 <device-name>  // to check file system
    lsblk -f    // to check file system

// make xfs file share:

    mkfs.xfs <device-name>
    xfs_repair <device-name>  // to check file system
    lsblk -f    // to check file system

// make vfat file share:

    mkfs.vfat <device-name>
    fsck.vfat <device-name>  // to check file system
    lsblk -f    // to check file system

// to make a mount point:

    mkdir /mnt/ashik   // some directory to point the mount
    vi /etc/fstab/     // to make the mount persistent
    mount -a           // to verify mounts are successful
    mount | grep <mount-directory>    // to verify mounts
    lsblk -f            // to verify mounts