# Night-Light-Switch-Script-Gnome
A simple bash shell script to switch( on/off ) the nightlight gnome option

You can easily use the nightlight mode with gnome desktops.
It is very pleasant to use with shortcuts:
  - You just need to go type shortcut in gnome search bar and add a shortcut.
  - In the field "command" paste the path to the shell script.
  - (Easy)Go to Display Settings, at the bottom you should see "Night Light". Set the hour from 00:00 to 23:59.
    (Advanced)You can also download the dconf editor and go to "org/gnome/settings-daemon/plugins/color/". Then set "night-light-schedule-from=0 and night-light-schedule-to=24.
