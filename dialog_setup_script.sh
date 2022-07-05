#!/bin/bash
VERSION=0.00.2
#source ~/.bashrc
#source ~/.zshrc

#source $HOME/git/repository/scripts/function_library/global_functions

#echo_info "This is VERSION: $VERSION of $0"

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Linux Setup Script"
TITLE="Setup Script"
MENU="Choose one of the following options:"

OPTIONS=(1 "Option 1"
	 2 "Option 2"
	 3 "Option 3")

CHOICE=$(dialog --clear \
		--backtitle "$BACKTITLE" \
		--title "$TITLE" \
		--menu "$MENU" \
		$HEIGHT $WITH $CHOICE_HEIGHT \
		"${OPTIONS[@]}" \
		2>&1 >/dev/tty)
clear
case $CHOICE in
        1)
            echo "You chose Option 1"
            ;;
        2)
            echo "You chose Option 2"
            ;;
        3)
            echo "You chose Option 3"
            ;;
esac








function install_git(){
echo_info "Installing git cli"
echo_info "++++++++++"
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/etc/apt/trusted.gpg.d/githubcli-archive-keyring.gpg
echo_info "adding dependencies"
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/trusted.gpg.d/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
echo_info "performaing update"
sudo apt update
echo_info "Installing gh"
sudo apt install gh
echo_ok "Installation done"
}


function ping_website(){
echo_info "Please enter website"
read website 
echo_info "How often do you want to ping?"
read amount
ping -c $amount $website
echo_ok "Ping done"
exit 0
}




#PS3='Please enter your choice: '
#options=("Install git" "Setup git" "Ping Website" "Option 3" "QUIT")
#select opt in "${options[@]}"
#do
#	case $opt in
#		"Install git")
#			install_git
#			;;
#		"Setup git")
#			setup_git
#			;;	
#		"Ping Website")
#			ping_website
#            		;;
#        	"Option 3")
#            		echo "you chose choice $REPLY which is $opt"
#            		;;
#        	"QUIT")
#			exit 0
#            		;;
#        	*) echo "invalid option $REPLY";;
#    	esac
#done

	
