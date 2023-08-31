#!/bin/bash


[ -d "/tmp/yay-bin" ] && (cd /tmp/yay-bin && makepkg -si) || echo "yay-bin/ not in /tmp"
[ -n $(command -v git) ] && echo "git is installed" || echo "git is not installed"
