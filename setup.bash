#!/bin/bash

#Basic setup
sudo apt install git wget curl terminator chromium docker.io dmenu feh kitty xserver-xorg-input-all
mkdir ~/Libraries
ln -s /home/scott/Documents/configs/Backgrounds/ /home/scott/Pictures/Backgrounds
sudo apt remove xserver-xorg-input-wacom

#zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zpm-zsh/colors ~/.oh-my-zsh/custom/plugins/colors
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zaw.git ~/.oh-my-zsh/custom/plugins/zaw
wget -O ~/.oh-my-zsh/custom/themes/pi.zsh-theme https://raw.githubusercontent.com/tobyjamesthomas/pi/master/pi.zsh-theme

##Install basic nerdfonts
mkdir ~/.local/share/fonts/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip
unzip Hack.zip -d ~/.local/share/fonts/
fc-cache ~/.local/share/fonts

# BSPWM
sudo apt install picom
sudo apt install bspwm
mkdir ~/.config/bspwmrc
ln -s /home/scott/Documents/configs/bspwmrc/bspwmrcwork /home/scott/.config/bspwmrc/bspwmrc
ln -s /home/scott/Documents/configs/bspwmrc/background_picker.bash /home/scott/.config/bspwmrc/

# SXHKD
ln -s /home/scott/Documents/configs/bspwmrc/sxhkd/ /home/scott/.config/sxhkd

# Nvim
ln -s /home/scott/Documents/configs/lazy_scottvim/ /home/scott/.config/nvim

## Install polybar
# dependencies
ln -s /home/scott/Documents/configs/polybar //home/scott/.config/polybar
sudo apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev python3-sphinx libuv1-dev libcairo2-dev libfontconfig1-dev libxcb-randr0-dev libxcb-composite0-dev xcb-proto x11proto-core-dev libxcb-icccm4-dev libxcb-ewmh-dev libxcb-util-dev python3-xcbgen xcb-proto -y
# Compiling
cd ~/Libraries
git clone --recursive https://github.com/polybar/polybar
cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make Install

# NVIDIA DRIVER
sudo apt install nvidia-driver-595

# arduino-mcp2515  BehaviorTree.CPP  depthai-core  depthai-viewer  diff-so-fancy  frugally-deep  FunctionalPlus  Groot  json  kisui_ai_bridge  kisui_extras  obs-studio  picom  pipewire  polybar  ros2_external_libraries  slock  tensorflow
