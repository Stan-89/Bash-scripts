#!/bin/sh
sudo apt-get update
sudo apt-get install gimp vlc unity-tweak-tool -y
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true
gsettings set com.canonical.Unity.Launcher launcher-position Bottom

#windows10 theme
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install windos-10-themes

#Moka icons
sudo add-apt-repository ppa:moka/stable
sudo apt-get update
sudo apt-get install moka-icon-theme

#Terminator terminal, git, chromium browser, atom
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install terminator git chromium-browser -y
wget https://github.com/atom/atom/releases/download/v1.8.0/atom-amd64.deb
sudo dpkg -i atom-amd64.deb
rm atom-amd64.deb

#apache2, mysql, phpmyadmin, ssl, php7
sudo apt-get install apache2 mysql-server phpmyadmin openssl ssl-cert php7.0 libapache2-mod-php7.0 php7.0-mysql php7.0-curl php7.0-gd php7.0-mcrypt php-mbstring php-gettext -y
sudo openssl req $@ -new -x509 -days 365 -nodes -out /etc/apache2/apache.pem -keyout /etc/apache2/apache.pem
sudo chmod 600 /etc/apache2/apache.pem

#google chrome as well
sudo apt-get install -y libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

#Installing node and Vue
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
#npm
sudo apt-get install -y npm
#vue
sudo npm install -y vue

#vuecli
sudo npm install -y --global vue-cli

#vue format for atom editor
sudo apm install vue-format
