#!/bin/sh
sudo apt update && sudo apt upgrade -y && apt install git neovim zsh exa -y
mkdir source && cd source && git clone https://github.com/maxwellodri/dotfiles && ./makesymlinks.sh nox && ./vim_plugins.sh
mkdir ~/bin
echo "In vim (neovim) run 'PlugInstall'"
echo -e "Now run:\nchsh root --shell /bin/zsh"
