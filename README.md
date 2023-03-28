# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for VIM.
## .bashrc
This is my custom .bashrc configuration for Bash.
## linux.sh
A shell script that performs various setup tasks for a Linux environment, such as creating a .TRASH directory in the user's home directory and setting up custom configurations for the .bashrc and .vimrc files.
## cleanup.sh
A shell script that removes all files and directories created by the linux.sh script.
## Makefile
Defines two targets: linux and clean. The linux target runs the linux.sh script after first running the clean target, which runs the clean.sh script.
## .bashrc_custom
A configuration file for the bash shell which sets various customizations for bash.
