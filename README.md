| :warning: WARNING :warning:                                                                         |
|:----------------------------------------------------------------------------------------------------|
| I am not using the GNOME desktop environment any more so this script won't recieve frequent updates |

# Night-Light-Switch-Script-Gnome
A simple bash shell script to switch( on/off ) the nightlight gnome option

You can easily use the nightlight mode with gnome desktops.

Easy installation
=================

You can also follow this video [tutorial](https://open.lbry.com/@lepaincestbon:f/Install-20Night-Light-Switch-Script-20Gnome-20Shortcut-20Keyboard:7).
  - Download the [latest release](https://github.com/PaulCoral/Night-Light-Switch-Script-Gnome/releases/) (or clone the repository)
  - Extract the archive and go into the extracted folder
  - Add the execution privileges to the `installer.sh` file : 
  ```bash
  chmod u+x installer.sh
  ```
  - Run `./installer.sh` and follow the instruction
  - Now you can switch the NightLight mode with Ctrl+Shift+L or your custom shortcut.


Hard Installation method (In case of issues)
============================================

It is very pleasant to use with shortcuts:
  - You just need to go type shortcut in gnome search bar and add a shortcut.
  - In the field `command` paste the path to the shell script.
  - (Easy)Go to `Display Settings`, at the bottom you should see "Night Light". Set the hour from `00:00` to `23:59`.
    (Advanced)You can also download the dconf editor and go to `org/gnome/settings-daemon/plugins/color/`. Then set `night-light-schedule-from=0 and night-light-schedule-to=24`.

:memo: Modify the shortcut in Gnome settings under the keyboard tab :exclamation:

Remove
======
  - remove the .CoPaScripts in your home directory
  - remove the shortcut in the gnome settings under the keyboard tab
  - ~(an `uninstaller.sh` will be provided in the future)~

#License

This project is licensed under the GPL-3 license.

Created by [Paul Coral](https://github.com/PaulCoral)
