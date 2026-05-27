#!/usr/bin/env fish

# Colors
set green (set_color green)
set red (set_color red)
set yellow (set_color yellow)
set cyan (set_color cyan)
set reset (set_color normal)

echo $cyan"============================="
echo "      WIFI MANAGER TOOL      "
echo "============================="$reset

# Check WiFi status
set status (nmcli radio wifi)

if test "$status" = disabled
    echo $yellow"WiFi is OFF. Turning it ON..."$reset
    nmcli radio wifi on
    sleep 1
end

echo $green"WiFi is ACTIVE"$reset

# Scan networks
echo $cyan"Scanning available networks..."$reset
sleep 1

set networks (nmcli -t -f SSID dev wifi list | sort -u | sed '/^$/d')

if test (count $networks) -eq 0
    echo $red"No networks found!"$reset
    exit 1
end

# Select network using fzf
set selected (printf "%s\n" $networks | fzf --prompt="Select WiFi > ")

if test -z "$selected"
    echo $red"No network selected. Exiting..."$reset
    exit 1
end

echo $cyan"Selected: $selected"$reset

# Check if already saved connection exists
set saved (nmcli connection show | awk '{print $1}' | grep -w "$selected")

if test -n "$saved"
    echo $green"Saved network found. Connecting without password..."$reset
    nmcli connection up id "$selected"

    if test $status -eq 0
        echo $green"✔ $selected successfully connected"$reset
    else
        echo $red"✖ $selected connection failed"$reset
    end
    exit 0
end

# If not saved, ask password
echo $yellow"New network detected. Enter password:"$reset
read -s password

echo $cyan"Connecting to $selected..."$reset

nmcli dev wifi connect "$selected" password "$password"

if test $status -eq 0
    echo $green"✔ $selected successfully connected"$reset
else
    echo $red"✖ $selected connection failed"$reset
end
