#!/bin/bash
sudo thermald;
sudo NetworkManager; 
sudo rfkill block bluetooth;
sudo Scripts/iptables.sh;
xrdb .Xresources &
startx;

