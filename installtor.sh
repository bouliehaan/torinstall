#!/bin/sh

sudo apt-get install -y tor

mkdir ~/tor/
wget https://www.torproject.org/dist/torbrowser/7.0.2/tor-browser-linux64-7.0.2_en-US.tar.xz
tar -xvf tor-browser-linux64-7.0.2_en-US.tar.xz
rm tor-browser-linux64-7.0.2_en-US.tar.xz
mv tor-browser_en-US ~/tor/

sudo chmod 777 -R ~/tor/tor-browser_en-US
touch ~/torbrowser
echo cd ~/tor/tor-browser_en-US/ >> ~/torbrowser
echo ./start-tor-browser.desktop >> ~/torbrowser
sudo chmod +x ~/torbrowser

sed -i '94,97 s/^/#/' ~/tor/tor-browser_en-US/Browser/start-tor-browser
chown -hR $USER ~/tor/tor-browser_en-US/

cd ~/
./torbrowser

sudo cp ~/tor/tor-browser_en-US/start-tor-browser.desktop /usr/share/applications
