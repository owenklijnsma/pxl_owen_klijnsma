# CCNA 1: Chapter 2

* Communicate with switch (out of the box) => console cable
* Telnet => PLAIN TEXT VERY BAD
* SSH => Secure Shell protocol VERY GOOD
* Out of band Management => communication that doesn't use bandwith
* In band Management => communication that uses bandwith
---
* POST (Power On Self Test) => small electric test to check if all components work (happens before boot)
* ROM (Read Only Memory) => read only
* RAM (Random Access Memory) => volatile memory
* NVRAM (Non Volatile RAM) => doesn't lose data in case of power break
* Flash memory => long term storage
    * OS is stored here
* Bootstrap/Bootloader => basic instructions to initiate boot (from ROM memory)
    * Searches OS (.iso in Flash memory)
    * Load OS (goes to RAM)
    * Search `startup-config` (in NVRAM)
    * Load `startup-config` (goes to RAM as `running-config`)
---
* Cisco commands
    * Switch> `?`
    * Switch# `show run`
    * Switch# `show start`
    * Switch# `show version`
    * Switch# `show ip interface brief`
    * Switch# `conf t`
    * Switch(config)# `do show run`
        * `do` = `sudo` in Linux
    * Switch(config)# `/hostname S1`
    * S1(config)# `enable secret cisco`
        * sets a password to go to root (`#`)
        * `cisco` is a default password
        * `enable password cisco` NEVER USE because of security risks (plain text)
    * S1(config)# `line vty 0 15`
    * S1(config-line)# `password cisco`
        * IS SAVED PLAIN TEXT
    * S1(config-line)# `login`
    * S1(config-line)# `exit`
    * S1(config)# `line con 0`
    * S1(config-line)# `password cisco`
        * IS SAVED PLAIN TEXT
    * S1(config-line)# `login`
    * S1(config-line)# `exit`
    * S1(config)# `service password-encryption`
---
`break;`