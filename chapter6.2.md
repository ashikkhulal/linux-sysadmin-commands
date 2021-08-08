# **Chapter 6.2: Using Network File Systems**

// types of latest NFS version:

    NFS V3:
    - requires a number of additional services (rpcbind, lockd, rpc.statd)
    - many firewall ports to configure
    - uses TCP/UDP

    NFS V4:
    - better performance than v3
    - only requires rpc.mountd
    - one firewall port to configure
    - TCP only
    - supports ACLs
    - default for RHEL, if the server supports it

// create NFS:

    $ sudo -i                           // change to root user
    $ mkdir -p /export/web_data{1,2}    // mount point directory
    $ vi /etc/exports                   // tells nfs server what we want to share
    $ systemctl enable --now nfs-server // enable nfs server
    $ systemctl status nfs-server       // check status
    $ showmount -e                      // shows mount
    $ mkdir /mnt/nfs_web_data{1,2}      // make directory to mount to nfs
    $ vi /etc/fstab                     // make it persistent
    $ mount -a                          // test the mount
    $ mount | grep -i nfs               // validate

