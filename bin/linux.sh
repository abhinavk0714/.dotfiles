#!/bin/bash
# Add shebang for bash

# Check if the operating system is Linux
if [[ $(uname) != "Linux" ]]; then
  echo "Error - This script only works on Linux" >> linuxsetup.log
  exit 1
fi

# Create .TRASH directory if it doesn't exist
mkdir -p ~/.TRASH

# Check if .vimrc file exists in home directory
if [[ -f ~/.vimrc ]]; then
  # If it exists, rename it to .bup_vimrc and log the action
  mv ~/.vimrc ~/.bup_vimrc
  echo "Renamed existing .vimrc file to .bup_vimrc" >> linuxsetup.log
fi

# Overwrite the contents of etc/vimrc file to a new file .vimrc in home directory
cat ~/.dotfiles/etc/vimrc > ~/.vimrc

# Add statement to end of .bashrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
