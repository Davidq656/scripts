#!/bin/bash
#Linux Setup script - Initial setup for debian based systems

#SOURCE FILES
source $HOME/git/repository/scripts/function_library/global_functions
#source ~/.bashrc
#source ~/.zshrc

#VARIABLES
VERSION=0.00.1

#SCRIPT-INFORMATION
echo_info "This is version: $VERSION of $0"


function install_git() {
	echo_info "Installing GIT CLI"
	echo_info "++++++++++"
	curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/etc/apt/trusted.gpg.d/githubcli-archive-keyring.gpg
	echo_info "adding dependencies"
