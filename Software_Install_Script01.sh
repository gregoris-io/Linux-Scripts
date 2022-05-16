#!/bin/bash

#############################################################
## This script will check for any updates and update.      ##
## Then it will download NordVpn and Flatpak functionality ##
## System will require a reboot for changes to take effect.##
#############################################################

##Update System##
sudo apt update

##Upgrade System##

## Install curl
sudo apt install curl


##NordVpn##
####################

## Install NordVpn
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)

## Give permissions for Nord
sudo usermod -aG nordvpn $USER

## Flatpak ##
####################

## Install Flatpak##
sudo apt install flatpak

##Install Flatpak software plugin##
sudo apt install gnome-software-plugin-flatpak

##Add Flathub repo##
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


## Reboot for changes to take effect##
####################
reboot

