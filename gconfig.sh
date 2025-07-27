#!/bin/bash
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:maximize,minimize,close'
gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar 'lower'
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true
gsettings set org.gnome.nautilus.preferences always-use-location-entry true

# Symlink wallpapers to backgrounds for use with Linux Theme Store
rm -rf ~/.local/share/wallpapers
ln -s ~/.local/share/backgrounds ~/.local/share/wallpapers
