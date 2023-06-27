#!/bin/bash

# Used within Jamf Pro to show the percentage on macbooks

# Grabs the username of the main user on the macbook. If the user has a space in their username, this will still get it
_user=$(stat -f '%Su' /dev/console)

# Command that changes the setting for battery percentage. Notice the quotes on the directory, just in case there is a space, it will still wortk
sudo -u "$_user" defaults write "/Users/$_user/Library/Preferences/ByHost/com.apple.controlcenter.plist" BatteryShowPercentage -bool true
