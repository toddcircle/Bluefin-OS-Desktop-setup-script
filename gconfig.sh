#!/bin/bash
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:maximize,minimize,close'
gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar 'lower'
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true
gsettings set org.gnome.nautilus.preferences always-use-location-entry true
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false
gsettings set org.gnome.desktop.interface enable-hot-corners true
gsettings set org.gnome.shell favorite-apps "$(python3 -c 'import json, sys; new = ["org.gnome.Terminal.desktop", "gnome-calculator.desktop"]; current = json.loads(sys.stdin.read()); ordered = new + [x for x in current if x not in new]; print(json.dumps(ordered))' <<< "$(gsettings get org.gnome.shell favorite-apps | sed "s/'/\"/g")")"

# Symlink wallpapers to backgrounds for use with Linux Theme Store
mkdir -p ~/.local/share/backgrounds
rm -rf ~/.local/share/wallpapers
ln -s ~/.local/share/backgrounds ~/.local/share/wallpapers
