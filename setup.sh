#!/bin/bash
# For terminals
sudo apt-get install sshfs zsh wget git curl htop powertop -y
sudo apt-get update -y; sudo apt-get upgrade -y

#zsh
chsh -s /bin/zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
sudo apt-get autoremove
# For GUIs
sudo apt-get install terminator gnome-tweak-tool \
                     gnome-shell-extensions chrome-gnome-shell \
                     emacs x2x
# numix
sudo add-apt-repository ppa:numix/ppa
sudo apt install numix-icon-theme-circle numix-icon-theme numix-gtk-theme
sudo apt-get update; sudo apt-get upgrade;
sudo apt-get install -f

# aliases
echo 'source ~/dotfiles/.aliasrc' >> ~/.zshrc

#terminator
sudo update-alternatives --config x-terminal-emulator

#pyenv
sudo apt-get install zlib1g-dev
curl https://pyenv.run | bash

#rescuetime
wget https://www.rescuetime.com/installers/rescuetime_current_amd64.deb -O ~/Downloads/rescuetime.deb
sudo dpkg -i ~/Downloads/rescuetime.deb

sudo apt-get install -f; sudo apt-get autoremove

# snap
sudo snap install spotify
sudo snap install atom --classic
sudo snap install pycharm-professional --classic
sudo snap install code --classic

# git
git config --global user.name "Luka Milic"

#folders
mkdir ~/Projects
