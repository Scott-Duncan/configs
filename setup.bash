#!/bin/bash
 
#Basic setup 
sudo apt install git wget curl 
mkdir ~/Libraries 

##Install basic nerdfonts 
mkdir ~/.local/share/fonts/ 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip 
unzip Hack.zip -d  ~/.local/share/fonts/
fc-cache ~/.local/share/fonts

## Install polybar 
# dependencies 
sudo apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev -y
# Compiling
cd Libraries 
git clone --recursive https://github.com/polybar/polybar
cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install

## Install polybar 
# dependencies 
sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-dpms0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl-dev libegl-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson 
cd ..
git clone https://github.com/yshui/picom.git
cd picom
git submodule update --init --recursive
meson setup --buildtype=release . build
ninja -C build
ninja -C build install
