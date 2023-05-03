# 


## Essentials


```
roles/essentials                    # Role name
├── files                           # Files directory  ( must be named like this ) 
│   ├── 01-custom.conf              # Drop-in for network interface
│   ├── 11-lo.network               # Additional loopback address
│   ├── br0.netdev                  # br0 definition
│   ├── br0.network                 # br0 config
│   └── pacman-new-mirrorlist.sh    # Script for updating pacman mirror list
├── handlers                        # Handlers dir ( must be named like this ) 
│   └── main.yml                    # Triggered by tasks
└── tasks                           # Tasks dir ( must be named like this ) 
    ├── br0.yml                     # Tasks for configuring bridge network
    ├── cronie.yml                  # Task for setting up cron
    ├── loopback.yml                # Task for adding additiional loopback address
    ├── main.yml                    # Main instruction
    └── packages.yml                # Task for installing system packages by pacman 
```

###  DNS

1. systemd-netword: a network configuration manager
2. systemd-resolved: a service that provides network name resolution
3. drop-in files: adding or changing configuration


