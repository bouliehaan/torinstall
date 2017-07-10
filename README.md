# torinstall
A simple script to install and configure Tor Browser.

This script will do the following:
- Install Tor
- Download and Configure Tor Browser
- Create a file in your home directory so you can launch Tor Browser from the terminal
- Create a an icon that you can launch from the GUI as you would launch any other application
- Fix the common issue where you cannot launch the browser as root
- Fix the common issue that occurs after launching as root where it will not allow you to launch due to the error "Tor browser unexpectedly ended"

Instructions:
  1. sudo chmod +x installtor.sh
  2. ./installtor.sh
  3. Type in your password for sudo and let the script do the rest
  
  Note: You should run this as whichever user you'll be using primarily, so don't type sudo before executing the script or it will create the easy launch file in root's home directory
