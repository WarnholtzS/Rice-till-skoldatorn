#!/bin/sh
echo "Welcome to the automated installer"
tmp=$(grep -E "PRETTY_NAME" /etc/os-release)
IFS=$'=' read -a OSARRAY <<< "$tmp"
OS="$(echo ${OSARRAY[1]})"
userchoice=""
if [ ! -d "~/.config/" ]; then
	mkdir ~/.config/
fi
if [ ! -d "~/.config/waybar/" ]; then
	mkdir ~/.config/waybar
fi
if [ ! -d "~/.config/hypr/" ]; then
	mkdir ~/.config/hypr
fi
if [ ! -d "~/.config/alacritty/" ]; then
	mkdir ~/.config/alacritty
fi
if [ ! -e "~/.config/waybar/config"]; then
	echo "Detecting previous config, do you want to override it?"
	while ( $userchoice != "yes" && $userchoice != "no" ) {
		read userchoice
		if [ $userchoice != "yes" && $userchoice != "no" ]; then
			echo "Please choice a legal response"
		fi
	}
	if [ $userchoice == "yes" ]; then
		echo "Overriding previous config"
		mv config ~/.config/waybar/config
	else 
		vers="1"
		installsuccess="no"
		while ( $installsuccess == "no" ) {
			if [ ! -e ~/.config/waybar/config.$vers ]; then
				echo "installing as config.$vers"
				mv config ~/.config/waybar/config.$vers
				$installsuccess=="yes"
			else 
				$vers=$vers+1	
			fi
		}
	fi
fi


