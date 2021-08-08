# **Chapter 5.3: Using Logical Volume Management (LVM)**

// check the volumes
    
    $ lsblk
    $ fdisk -l
    $ pvs

// create physical volumes
    
    $ pvcreate <available volume from lsblk>
    $ pvs

// create a volume group
    
    $ vgs       // check volume group
    $ vgcreate <name> <device that was iniatilized>
    $ vgs
    $ vgextend <name of volume group> <persistent volume>

// logical volumes
    
    $ lvs       // check logical volumes
    $ lvcreate -l 100%FREE -n <name(database1)> <volumegroup from vgcreate>
    $ lvs
    $ lvextend -L +<size in GB(1G)> <name of volume group/name(database1)>
    
// remove mounted logical volumes    

    $ umount <name>
    $ lvremove <name of volume group/name(database1)>

// remove mounted volume groups   

    $ vgremove -f <name of volume group>

// remove mounted physical groups   

    $ pvremove <name of the device>
    $ wipefs -a <name of the device>    // to wipe clean the device after its removed

