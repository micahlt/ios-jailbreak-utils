#!/bin/bash

echo "CHECKRA1N SSH PHOTO VIEWER"
echo "v1.0.0"
echo "adding the checkra1n repository"
echo "deb https://assets.checkra.in/debian /" | sudo tee -a /etc/apt/sources.list
echo "adding the repository keys"
sudo apt-key adv --fetch-keys https://assets.checkra.in/debian/archive.key
echo "updating sources"
sudo apt update
echo "installing checkra1n"
sudo apt-get install checkra1n
echo "checkra1n has been installed"
read -p "Press enter after you've plugged in your iOS device"
sudo checkra1n
echo "checkra1n has jailbroken the device"
echo "now open the checkra1n app on your iOS device and install Cydia"
read -p "Press enter after you've installed Cydia"
echo "Make sure your iOS device is on the same network as this computer."
echo "Once you have, type the iOS device's IP address:"
read ipaddress
echo "next, search OpenSSH on Cydia and click install"
read -p "Press enter after OpenSSH has successfully installed"
echo "changing directories"
cd ../../
echo "creating a filesystem link with the iOS device"
sudo sshfs "root@$ipaddress":/ /mnt
echo "getting sudo access"
echo "navigating to DCIM folder"
sudo sh -c 'cd /mnt/private/var/mobile/Media/DCIM'
