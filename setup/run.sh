#!/bin/bash
sudo apt-get install zsh wget terminator git curl gnome-tweak-tool \
                     gnome-shell-extensions chrome-gnome-shell
sudo add-apt-repository ppa:numix/ppa
sudo apt install numix-icon-theme-circle numix-icon-theme numix-gtk-theme
sudo apt-get update; sudo apt-get upgrade; sudo apt-get autoremove;
sudo apt-get install -f
chsh -s /bin/zsh
echo 'source ~/dotfiles/.aliasrc' >> ~/.zshrc
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sudo update-alternatives --config x-terminal-emulator
curl https://pyenv.run | bash
wget https://www.rescuetime.com/installers/rescuetime_current_amd64.deb -O ~/Downloads/rescuetime.deb
sudo dpkg -i Downloads/rescuetime.deb
sudo snap install spotify
