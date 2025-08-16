#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Source helper file
source $SCRIPT_DIR/helper.sh

log_message "Installation started for utilities section"
print_info "\nStarting utilities setup..."

run_command "pacman -S --noconfirm waybar" "Install Waybar - Status Bar" "yes"
run_command "cp -r /home/$SUDO_USER/edited-hyprland-config/configs/waybar /home/$SUDO_USER/.config/" "Copy Waybar config" "yes" "no"

run_command "pacman -S --noconfirm wofi" "Install Wofi - Application Launcher" "yes" "no"
run_command "cp -r /home/$SUDO_USER/edited-hyprland-config/configs/wofi /home/$SUDO_USER/.config/" "Copy Wofi config(s)" "yes" "no"

run_command "pacman -S --noconfirm cliphist" "Install Cliphist - Clipboard Manager" "yes"

run_command "yay -S --sudoloop --noconfirm swww" "Install SWWW for wallpaper management" "yes" "no"
run_command "mkdir -p /home/$SUDO_USER/.config/assets/backgrounds && cp -r /home/$SUDO_USER/edited-hyprland-config/assets/backgrounds /home/$SUDO_USER/.config/assets/" "Copy sample wallpapers to assets directory (Recommended)" "yes" "no"

run_command "yay -S --sudoloop --noconfirm hyprpicker" "Install Hyprpicker - Color Picker" "yes" "no"

run_command "yay -S --sudoloop --noconfirm hyprlock" "Install Hyprlock - Screen Locker (Must)" "yes" "no"
run_command "cp -r /home/$SUDO_USER/edited-hyprland-config/configs/hypr/hyprlock.conf /home/$SUDO_USER/.config/hypr/" "Copy Hyprlock config" "yes" "no"

run_command "yay -S --sudoloop --noconfirm wlogout" "Install Wlogout - Session Manager" "yes" "no"
run_command "cp -r /home/$SUDO_USER/edited-hyprland-config/configs/wlogout /home/$SUDO_USER/.config/ && cp -r /home/$SUDO_USER/edited-hyprland-config/assets/wlogout /home/$SUDO_USER/.config/assets/" "Copy Wlogout config and assets" "yes" "no"

run_command "yay -S --sudoloop --noconfirm hyprshot" "Install Grimblast - Screenshot tool" "yes" "no"

run_command "yay -S --sudoloop --noconfirm hypridle" "Install Hypridle for idle management (Must)" "yes" "no"
run_command "cp -r /home/$SUDO_USER/edited-hyprland-config/configs/hypr/hypridle.conf /home/$SUDO_USER/.config/hypr/" "Copy Hypridle config" "yes" "no"

run_command "sudo pacman -S power-profiles-daemon" "Install power-profile-daemon" "yes" "no"

run_command "sudo pacman -S pipewire-pulse" "Install optional pack for pipewire" "yes" "no"
run_command "sudo pacman -S swaync" "Install swaync for nofify" "yes" "no"

run_command "yay -S waypaper" "Install a GUI wallpaper select" "yes" "no"
run_command "cp -r /home/$SUDO_USER/edited-hyprland-config/configs/waypaper /home/$SUDO_USER/.config/" "Copy Waypaper config" "yes" "no"

echo "------------------------------------------------------------------------"
