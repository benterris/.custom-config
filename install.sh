#!/bin/bash

# File locations may vary, these may not all work

ln -sf "/home/$SUDO_USER/dotfiles/vscode/settings.json" "/home/$SUDO_USER/.config/Code/User/settings.json"
ln -sf "/home/$SUDO_USER/dotfiles/vscode/keybindings.json" "/home/$SUDO_USER/.config/Code/User/keybindings.json"
ln -sf "/home/$SUDO_USER/dotfiles/.zshrc" "/home/$SUDO_USER/.zshrc"
ln -sf "/home/$SUDO_USER/dotfiles/rebellion.json" "/home/$SUDO_USER/.vscode/extensions/daylerees.rainglow-1.5.2/themes/rebellion.json"
ln -sf "/home/$SUDO_USER/dotfiles/us" "/usr/share/X11/xkb/symbols/us"
ln -sf "/home/$SUDO_USER/dotfiles/terminator-config" "/home/$SUDO_USER/.config/terminator/config"
ln -sf "/home/$SUDO_USER/dotfiles/vim/vimrc" "/home/$SUDO_USER/.vim/vimrc"
ln -sf "/home/$SUDO_USER/dotfiles/.gitconfig" "/home/$SUDO_USER/.gitconfig"
ln -sf "/home/$SUDO_USER/dotfiles/vim/mydelek.vim" "/usr/share/vim/vim80/colors/mydelek.vim"
ln -sf "/home/$SUDO_USER/dotfiles/ben.zsh-theme" "/home/$SUDO_USER/.oh-my-zsh/custom/theme/ben.zsh-theme"
ln -sf "/home/$SUDO_USER/dotfiles/.tmux.conf" "/home/$SUDO_USER/.tmux.conf"
ln -sf "/home/$SUDO_USER/dotfiles/.Xdefaults" "/home/$SUDO_USER/.Xdefaults"
ln -sf "/home/$SUDO_USER/dotfiles/manben/manb" "/usr/local/bin/manb"
ln -sf "/home/$SUDO_USER/dotfiles/xfce4-keyboard-shortcuts.xml" "/home/$SUDO_USER/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml"
ln -sf "/home/$SUDO_USER/dotfiles/idea/.ideavimrc" "/home/$SUDO_USER/.ideavimrc"
ln -sf "/home/$SUDO_USER/dotfiles/.config/alacritty/alacritty.yml" "/home/$SUDO_USER/.config/alacritty/alacritty.yml"
ln -sf "/home/$SUDO_USER/dotfiles/.config/ranger/rc.conf" "/home/$SUDO_USER/.config/ranger/rc.conf"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions

cp -r .urxvt "/home/$SUDO_USER/.urxvt"
