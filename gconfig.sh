#!/bin/bash
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:maximize,minimize,close'
gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar 'lower'
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true
gsettings set org.gnome.nautilus.preferences always-use-location-entry true
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false

# Symlink wallpapers to backgrounds for use with Linux Theme Store
mkdir -p ~/.local/share/backgrounds
rm -rf ~/.local/share/wallpapers
ln -s ~/.local/share/backgrounds ~/.local/share/wallpapers
