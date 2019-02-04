# Update
sudo apt update
sudo apt -y upgrade
sudo apt -y dist-upgrade

# Vscodium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo apt-key add -
echo 'deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main' | sudo tee -a /etc/apt/sources.list
sudo apt update
sudo apt -y install vscodium

# Enpass
wget -O - https://apt.enpass.io/keys/enpass-linux.key | sudo apt-key add -
echo 'deb https://apt.enpass.io/ stable main' | sudo tee -a /etc/apt/sources.list
sudo apt update
sudo apt -y install enpass
  
# Nodejs + NPM
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt install -y nodejs

# ZSH shell
sudo apt -y install zsh fonts-hack-ttf
chsh -s $(which zsh)
sudo npm i -g spaceship-prompt --unsafe-perm=true --allow-root

# Install codecs
sudo apt install -y ubuntu-restricted-extras libavcodec-extra

# Vlc
sudo apt install -y vlc

# Browsers
sudo apt install -y chromium-browser firefox

# Backup
sudo add-apt-repository ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install -y timeshift

# Tweak system
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo apt-get update
sudo apt-get install -y software-properties-common elementary-tweaks

# Cleanup
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove
