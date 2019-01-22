# Night-Light-Switch-Script-Gnome
A simple bash shell script to switch( on/off ) the nightlight gnome option

You can easily use the nightlight mode with gnome desktops.

Easy installation

Go in the downloaded folder
Add the execution privileges to the installer.sh file (chmod u+x installer.sh)
Run the installer.sh and follow the instruction
Now you can switch the NightLight mode with Ctrl+Shift+L or your custom shortcut.


Hard Installation method (In case of issues)

It is very pleasant to use with shortcuts:
  - You just need to go type shortcut in gnome search bar and add a shortcut.
  - In the field "command" paste the path to the shell script.
  - (Easy)Go to Display Settings, at the bottom you should see "Night Light". Set the hour from 00:00 to 23:59.
    (Advanced)You can also download the dconf editor and go to "org/gnome/settings-daemon/plugins/color/". Then set "night-light-schedule-from=0 and night-light-schedule-to=24.

    

Project creator : Paul Coral
