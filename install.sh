#!/bin/bash
green=`tput setaf 2`
echo "${green}Make sure you have go installed"
echo "${green}Make sure you have go installed"
sleep 3
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs




#go need to be installed for installing this

echo "Installing gau by lc"
go install github.com/lc/gau/v2/cmd/gau@latest

echo "Installing qsreplace by tomnomnom"
go install github.com/tomnomnom/qsreplace@latest

echo "Installing httpx by projectdiscovery"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

sudo cp ~/go/bin/gau /bin/
sudo cp ~/go/bin/qsreplace /bin/
sudo cp ~/go/bin/httpx /bin/
echo "${green} get me here https://twitter.com/V24016770"
