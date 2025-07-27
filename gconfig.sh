#!/bin/bash
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:maximize,minimize,close'
gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar 'lower'
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true
gsettings set org.gnome.nautilus.preferences always-use-location-entry true
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false
gsettings set org.gnome.desktop.interface enable-hot-corners true
flatpak info org.gnome.gedit >/dev/null 2>&1 || flatpak install -y flathub org.gnome.gedit
gsettings set org.gnome.shell favorite-apps "$(python3 -c 'import json, sys; favs = json.loads(sys.stdin.read()); new = ["org.gnome.gedit.desktop"]; [favs.append(app) for app in new if app not in favs]; print(json.dumps(favs))' <<< "$(gsettings get org.gnome.shell favorite-apps | sed "s/'/\"/g")")"
gsettings set org.gnome.shell favorite-apps "$(python3 -c 'import json, sys; favs = json.loads(sys.stdin.read()); new = ["gnome-calculator.desktop"]; [favs.append(app) for app in new if app not in favs]; print(json.dumps(favs))' <<< "$(gsettings get org.gnome.shell favorite-apps | sed "s/'/\"/g")")"

# Symlink wallpapers to backgrounds for use with Linux Theme Store
mkdir -p ~/.local/share/backgrounds
rm -rf ~/.local/share/wallpapers
ln -s ~/.local/share/backgrounds ~/.local/share/wallpapers
