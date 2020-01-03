#!/bin/bash
# For terminals
sudo apt-get install zsh wget git curl -y
sudo apt-get update -y; sudo apt-get upgrade -y
sudo apt-get install -f
chsh -s /bin/zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
sudo apt-get autoremove
# For GUIs
sudo apt-get install terminator gnome-tweak-tool \
                     gnome-shell-extensions chrome-gnome-shell \
                     emacs
sudo add-apt-repository ppa:numix/ppa
sudo apt install numix-icon-theme-circle numix-icon-theme numix-gtk-theme
sudo apt-get update; sudo apt-get upgrade;
sudo apt-get install -f
echo 'source ~/dotfiles/.aliasrc' >> ~/.zshrc
sudo update-alternatives --config x-terminal-emulator
curl https://pyenv.run | bash
wget https://www.rescuetime.com/installers/rescuetime_current_amd64.deb -O ~/Downloads/rescuetime.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/Downloads/chrome.deb
sudo dpkg -i ~/Downloads/rescuetime.deb
sudo dpkg -i ~/Downloads/chrome-deb
sudo apt-get install -f
sudo snap install spotify
sudo snap install atom
sudo apt-get autoremove
git config --global user.name "Luka Milic"
