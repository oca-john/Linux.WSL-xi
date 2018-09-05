# Set text mode as the default booting mode
> openSUSE take `systemd` as it's boot manager software. And `systemctl` is it's main command to change the boot setting.
## Get the default target
> To get the status of boot level, type `systemctl get-default` .  
> The default setting is `graphical.target`, means boot into the graphical mode.
## Change/set the default target
> To change it, type `systemctl set-default multi-user.target` .  
> This will make your computer boot into the multi-user mode, also named text-mode.  
