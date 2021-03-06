#!/bin/bash

echo "workInstall"
# === For synergy ===
sudo apt-get install libavahi-compat-libdnssd1 -y
sudo apt-get install synergy -y

# === Tightvnc === 
sudo apt-get install xtightvncviewer

# === SVN side by side compair ===
sudo pip install --upgrade cdiff

# === Python 3.4 ===
sudo apt-get install python3.4 -y

# === jq ===
sudo apt-get install jq
