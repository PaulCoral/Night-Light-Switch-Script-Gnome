# Night-Light-Switch-Script-Gnome
A simple bash shell script to switch( on/off ) the nightlight gnome option

You can easily use the nightlight mode with gnome desktops.

Easy installation
=================

You can also follow this video [tutorial](https://www.youtube.com/watch?v=wUpL-WnHqIc).
  - Go in the downloaded folder
  - Add the execution privileges to the installer.sh file (chmod u+x installer.sh)
  - Run the installer.sh and follow the instruction
  - Now you can switch the NightLight mode with Ctrl+Shift+L or your custom shortcut.


Hard Installation method (In case of issues)
============================================

It is very pleasant to use with shortcuts:
  - You just need to go type shortcut in gnome search bar and add a shortcut.
  - In the field "command" paste the path to the shell script.
  - (Easy)Go to Display Settings, at the bottom you should see "Night Light". Set the hour from 00:00 to 23:59.
    (Advanced)You can also download the dconf editor and go to "org/gnome/settings-daemon/plugins/color/". Then set "night-light-schedule-from=0 and night-light-schedule-to=24.

/\/Modify the shortcut in Gnome settings under the keyboard tab\/\

Remove
======
  - remove the .CoPaScripts in your home directory
  - remove the shortcut in the gnome settings under the keyboard tab
  - (an uninstaller.sh will be provided in the future)


------------------Project creator : Paul Coral----------------------------------

Contact
=======
Discord for this repository : https://discord.gg/dHKduBW
Also, check my profile for other disocrd server.
