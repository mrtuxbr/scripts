#!/bin/bash

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@@ PolyMC Installer for Ubunutu@@"
echo "@@    Developed by Mr.TuX.Br   @@"
echo "@@           Version: 1        @@"
echo "@@  Published on July 6th 2022 @@"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
sleep 1
echo
				                        
	

curl -q 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null 


echo "deb [signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-mpr $(lsb_release -cs)" | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list

sudo apt update
sudo apt install polymc
exit 0
