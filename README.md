# GNOME Setup Script

This script sets the following GNOME desktop preferences 

## 🔧 Features

- **Dual-sided window control buttons**  
  Adds close, minimize, and maximize buttons to both the left and right sides of windows.  
  Perfect if you switch between macOS and Windows — no more fumbling for the window controls.

- **Right-click lowers windows**  
  Right-clicking on the titlebar or window borders sends the window to the back.  
  Incredibly useful, and it's surprising this isn't the default behavior.

- **Natural scrolling**  
  Enables natural (reverse) scrolling for both touchpad and mouse.  
  Because scrolling down should move the content up — the way it *should* be.

## 🚀 How to Use

Open a terminal and run the following commands:

```bash
# Clone the repository
git clone https://github.com/toddcircle/gnome-setup-script.git

# Enter the directory
cd gnome-setup-script

# Make the script executable
chmod +x gconfig.sh

# Run the setup script
./gconfig.sh
