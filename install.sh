#!/bin/bash

ln -sf "/home/$SUDO_USER/.custom-config/vscode/settings.json" "/home/$SUDO_USER/.config/Code/User/settings.json"
ln -sf "/home/$SUDO_USER/.custom-config/vscode/keybindings.json" "/home/$SUDO_USER/.config/Code/User/keybindings.json"
ln -sf "/home/$SUDO_USER/.custom-config/.zshrc" "/home/$SUDO_USER/.zshrc"
ln -sf "/home/$SUDO_USER/.custom-config/rebellion.json" "/home/$SUDO_USER/.vscode/extensions/daylerees.rainglow-1.5.2/themes/rebellion.json"
ln -sf "/home/$SUDO_USER/.custom-config/us" "/usr/share/X11/xkb/symbols/us"
