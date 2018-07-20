# Openbox Setup
> Please setup the openbox environment with the user's setup files in `~/.config/openbox/`.  

## 1. Programs Auto Login Openbox
- File: `~/.config/openbox/autostart`.
- Codes: write the model like `program_name &` in the setup file will make a program auto login.

```openbox
# set the docky		# Please install the docky first
docky &
# set the tint2		# Please install the tint2 first
tint2 &
```

### 1.1 Set the Docky
> Put it to the buttom.  
> Pin some useful programs onto the dock.  
> Don't use any docklets, while the tint2 will do that.  

### 1.2 Set the Tint2
> Open the `Tint2 settings` window from openbox-menu.  
> Select the user's setting file from `~/.config/tint2` to change it's setting.  
> `Panel, Panel items, Launcher` are what we need to set.  

### 1.3 Set the Wallpaper of Openbox
```openbox
# set the wallpaper		# Please install the feh first
feh --bg-scale /home/oca/Pictures/linuxmint-sonya/mbandoch_alberta.jpg
```

## 3. Set the Application Menu of Openbox
- File: `/etc/xdg/openbox/menu.xml` tell us the menu is set by `openbox-pipemenu`.
- Run `openbox-pipemenu` and redirect into a new file `~/.config/openbox/menu.xml`.
- The `menu.xml` file will work.

### 3.1 Set the `menu.xml` File
- Use the indentation `(number of space)` to control menu levels.
- Show an example here:   

```
<openbox_menu ...>		# This line must be the head of menu.xml file
 <menu id="prog" label="program">				# 1 spaces means menu
  <item label="program">						# 2 spaces means item
   <action name="Execute">						# 3 spaces means action
    <command>kate</command>						# 4 spaces means command
   </action>
  </item>				# End of program item
 </menu>				# End of a submenu
</openbox_menu ...>		# This line must be the end of menu.xml file
```

## 4. Fonts
> Mainly for the `terminal and kate` text editor:  
> Font name: `Latin Modern Mono` , 10, regular  

## 5. Auto Mount
### 5.1 Check the UUID of Your Disk
> `sudo blkid  (password)` will check the UUID of your disk, remember it.  

### 5.2 Add It to the Mount Setting File
> `UUID=6450843B50841648   /run/media/oca/6450843B50841648 auto    nosuid,nodev,nofail,x-gvfs-show 0 2`  
> UUID can be find from the 5.1	mount it to the `/run` folder	auto format	other setting and two number as shown  
