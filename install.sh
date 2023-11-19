#!/bin/bash
#

function packageInstall() {
    packages=(
        "brave-bin"
        "xorg-server"
        "xorg-xinit"
        "xorg-xrandr"
        "xorg-setxkbmap"
        "xorg-xset"

        "neovim"
        "clang"
        "npm"
        "make"
        # "xwallpaper"
        # "xcompmgr"
        # "xsel"
        # "xclip"
        # "light"
        # "libnotify"
        # "dunst"
        # ""
        # ""
        # ""
        # ""
        # ""
        # ""
        # ""
    )

    for name in ${packages[@]}
    do
        yay -S $name --noconfirm
    done
}

function setup() {
    # setup
}

function installYay() {
    if command -v git;
    then
        sudo pacman -S git --noconfirm
        cd /tmp
        git clone https://aur.archlinux.org/yay-bin
        cd yay-bin
        makepkg -si
    fi
}

function filesystem() {
    sudo mkdir -p /home/$USER/.config
    sudo mkdir -p /home/$USER/.local/src
    sudo mkdir -p /home/files
}

# install git and yay
command -v git || sudo pacman -S git
command -v yay || installYay

# create drectory structure
filesystem

# install packages
packageInstall
