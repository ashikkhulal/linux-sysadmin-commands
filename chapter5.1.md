# **Configuring Local Storage on RHEL8**

- Manage `MBR` and `GPT partitions` using `fdisk` and `gdisk`
- Managing system `swap`-**add/remove** using `swapon`, `swapoff`, and `mkswap`

// list disks:

    $ fdisk -l

// crete a gpt partition on available disk:

    $ gdisk <diskname>
    $ gdisk /dev/nvme1n1  (e.g.)

    use `p` to list partitions
    use `n` for new
    and after that you can accept the default or maybe modify some options
    use `w` to write

//mount the file system on the newly partitioned disk:

    $ mkfs.ext4 <newly-partioned-disk>
    $ mkfs.ext4 /dev/nvme1n1p1   (e.g.)
    $ mkdir <newdirname> 
    $ mkdir /web_project  (e.g.)
    $ mount <newly-partitioned-disk> <newly-created-dir>
    $ mount /dev/nvme1n1p1 /web_project/  (e.g.)
    $ mount | grep web_project   (to verify)

// add additional swap space:

    $ swapon            (lists the swap size)
    $ fdisk -l             (list disks)
    $ fdisk <diskname>   (to create a new mbr partition)
    $ fdisk /dev/nvme2n1    (e.g.)
    use `n` for new partition
    use `t` for type
    use `L` to list codes
    use `w` to write

// format our newly created swap partition & give it a label

    $ mkswap -L <label-name> <newly-partitioned-disk>
    $ mkswap -L more_swap /dev/nvme2n2p1      (e.g.)
    $ swapon <newly-partitioned-disk>      (to add swapon)
    $ swapon /dev/nvme2n1p1         (example)
    $ swapon       (lists the swap size)

