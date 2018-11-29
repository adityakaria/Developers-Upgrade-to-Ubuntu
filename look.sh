#!/bin/bash

echo "Installing GNOME TWEAKS App..."
sudo apt install gnome-tweaks
echo "Installing the followig themes and shell extensions..."
echo "1. Arc Theme (Light)"
echo "2. Arc Theme (Dark)"
echo "3. Arc Theme (Darker)"
echo "4. Arc Theme (Adwaita Icon Dark Theme)"
echo "5. NUMIX GTX theme and icons"
sudo apt install arc-theme
sudo apt install adwaita-icon-theme-full
sudo apt install numix-gtk-theme numix-icon-theme
echo "Installing Gnome shell extensions..."
sudo apt install gnome-shell-extensions
echo "Choose your theme from the opened Window: "
gnome-tweaks