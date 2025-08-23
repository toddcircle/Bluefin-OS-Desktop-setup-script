# GNOME Setup Script

This script sets the following GNOME desktop preferences 
currently for use with Bluefin OS.

NOTE:  the first line for the dual sided controls currently breaks firefox.
to get firefox working again after running the cript use:
gsettings set org.gnome.desktop.wm.preferences button-layout ':close'


## 🔧 Features

- **Dual-sided window control buttons**  
  (Mac + Window$ style) I sometimes get confused moving the mouse to close the window only to find the contorls are on the other side.
 
    As a site note due to Mozilla weirdness:  
      Firefox - right click on customize toolbar, click customize toolbar, in the bottom left of the screen -tick the box labelled "Title Bar"
      Thunderbird - Vegetarian Hamburger menu, Settings, search for title, untick the box beside "Hide system window titlebar"
     Problem solved.

- **Right-click on titlebar or window borders**  
  Throws the window to the back of the pile if you have multiple open windows on top of each other, to quickly find the one you're after.
  I Can't understand why this isn't enabled and used as default, so useful.

- **Natural scrolling for mouse**  
  The the way it *should* be.

- **Nautilus text location**  
  Uses the full text path in Nautilus, more practicle.

- **Prefer Dark**  
  Enables Dark Mode

- **Disable auto screen brightness**  
  Disables auto screen brightness on laptop because
  it's annoying AF

- **Enable Hot Corner**  
  More useable this way.

- **Disable multiple desktops**  
  Only 1 workspace because... what's the point.
  
- **Adds missing apps**  
  Installs gedit, Brave Browser, Linux Theme Store, Startup Configuration and Boxbuddy as a flatpak
  Adds calculator, Boxbuddy, gedit, Linux Theme Store, Startup Configurattion, and Brave to the dock

- **Redirects wallpapers folder to backgrounds**  
  Deletes ~/.local/share/wallpapers kde uses and creates a link to ~/.local/share/backgrounds.
  So when wallpapers/backgrounds are downloaded by Linux Theme Store they get placed into the location gnome expects to find them.

## 🚀 How to Use:

Open a terminal and run the following commands:

```bash
# Clone the repository
git clone https://github.com/toddcircle/Bluefin-OS-Desktop-setup-script.git

# Enter the directory
cd Bluefin-OS-Desktop-setup-script

# Make the script executable
chmod +x gconfig.sh

# Run the setup script
./gconfig.sh
