#!/bin/bash
# Add shebang for bash

# Remove the .vimrc file in the home directory
rm -f ~/.vimrc

# Remove the line 'source ∼/.dotfiles/bashrc custom' in .bashrc file using sed
sed -i '/source ~\/.dotfiles\/bashrc_custom/d' ~/.bashrc

# Remove the .TRASH directory in home directory if it exists
if [[ -d ~/.TRASH ]]; then
  rm -r ~/.TRASH
fi

