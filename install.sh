#!/usr/bin/sh

### first
sudo apt update
sudo apt upgrade

### base
sudo apt install -y git gcc make

### sh
sudo apt install -y tmux zsh neofetch wget curl openssh-server sshpass

### gnome
sudo apt install -y gnome-tweaks

### editor
sudo apt install -y vim neovim

### multi-media
sudo apt install -y obs-studio vlc

### perf
sudo apt install stress sysstat

### dev-env
sudo apt install python3 python3-pip
