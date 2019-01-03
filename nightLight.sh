#!/bin/bash

#Tested on Ubuntu 18.10
#It could be use full to enable this script with a shortcut

nightLight=$(gsettings get org.gnome.settings-daemon.plugins.color night-light-enabled)

if [ "$nightLight" = true ] ;
then
	gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false

else
	gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
fi
