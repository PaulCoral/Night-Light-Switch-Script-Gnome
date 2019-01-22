#!/usr/bin/env bash

#Creating directories and copying files
BASEDIR=$(dirname "$0")
mkdir ~/.CoPaScripts
mkdir ~/.CoPaScripts/Night-Light-Switch-Script-Gnome

cp $BASEDIR/nightLight.sh ~/.CoPaScripts/Night-Light-Switch-Script-Gnome/
cp $BASEDIR/LICENSE ~/.CoPaScripts/Night-Light-Switch-Script-Gnome/
cp $BASEDIR/README.md ~/.CoPaScripts/Night-Light-Switch-Script-Gnome/

#Changing execution privileges
chmod u+x ~/.CoPaScripts/Night-Light-Switch-Script-Gnome/*

#gsettings set org.gnome.desktop.wm.keybindings Gnome-Night-Light-Switch ['<Shift><Control>l']

#Setting up NightLight
gsettings set org.gnome.settings-daemon.plugins.color active true

gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 1e-08
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 24

#Adding a new custom keyboard shortcut
firstlist = $(gsettings get org.gnome.settings-daemon.plugins.media-keys custom-keybindings)

echo '$firstlist

Enter the number of the last custom shortcut'
read lastcustom

sure=$true

while [[ $sure ]]; do
  echo 'Are you sure ? And is this a number ? (yes/no)'
  read response
  if [[ $response="yes" ]]; then
    sure=$false
  elif [[ $response="no" ]]; then
    echo 'Enter the number of the last custom shortcut'
    read lastcustom
  fi
done

addedString=", '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom"$lastcustom"/']"
firstlist = ${firstlist:0:-1}$addedString
echo firstlist

echo "Change would be added.
Press Ctrl+C if you want to leave or Press Enter to continue..."
read lol

sure=true
while [[ $sure ]]; do
  echo "By default the shortcut would be Ctrl+Shift+L
  Do you want modify it? A shortcut code will be asked. (yes/no)"
  read response

  if [[ $response="no" ]]; then
    sure=$false
    shortcutcode= "<Shift><Control>l"
  elif [[ $response="yes" ]]; then
    echo 'Enter the custom shortcut code'
    read shortcutcode
  fi
done

echo "You will be able to modify the shortcut in the Gnome settings"

#Making the change
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings $firstlist

#configuring the shortcut
echo "Enter the shortcut name"
read shortcutname
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom"$lastcustom"/ name "$shortcutname"

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom"$lastcustom"/ command '~/.CoPaScripts/Night-Light-Switch-Script-Gnome/nightLight.sh'

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom"$lastcustom"/ binding "$shortcutcode"
