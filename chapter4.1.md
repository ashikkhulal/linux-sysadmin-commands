# **Managing the Boot Processon RHEL 8**

// **BIOS/POST**: Server is powered on, `BIOS` loads and executes `POST`

// **MASTER BOOT RECORD (MBR)**: `BIOS` loads the contents of `MBR`

// **GRUB**: the `GRUB bootloader` loads the `kernel`

// **Kernel**: the `kernel` loads dirvers and starts `systemd`

// **systemd**: Reads `/etc/systemd` configuration files and `default.target` file

// **default.target**: System brought to state as defined by `default.target`

    $ systemctl get-default // gives default target
    $ systemctl set-default multi-user // sets default target to mult-user non gui
    $ sudo systemctl reboot // reboots the system
    $ sudo systemctl poweroff // shutsdown the system