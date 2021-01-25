#!/bin/sh
sudo apt update && sudo apt upgrade -y && apt install git neovim zsh exa nodejs ctags gnupg software-properties-common -y #vim plugin rely on ctags,nodejs

#github-cli:
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update 
sudo apt install gh -y 
#grab dotfiles
mkdir source && cd source && git clone https://github.com/maxwellodri/dotfiles && ./makesymlinks.sh nox && ./vim_plugins.sh
mkdir ~/bin
sh custom_bin_scripts.sh
echo "In vim (neovim) run 'PlugInstall'"
echo -e "Now run:\nchsh root --shell /bin/zsh"

#https://github.com/LukeSmithxyz/emailwiz #grab the email script
