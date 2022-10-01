
# nmap
# wfuzz
# amass
# ffuf
# sublister
# gobuster
# knock
# gau
# seclist

echo "updating apt ..."
apt clean && apt autoclean
apt-get update && apt-get upgrade

echo "installing nmap ..."
apt install nmap

echo "installing wfuzz ..."
apt-get install python-pip
pip3 install wfuzz

echo "installing amass ..."
apt-get install golang
snap install amass

echo "installing ffuf ..."
go install github.com/ffuf/ffuf@latest

echo "installing  sublister ..."
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
apt-get install python-requests
apt-get install python-dnspython
apt-get install python-argparse
cd ..

echo "installing gobuster ..."
apt-get -y install gobuster


echo "installing knock ..."
git clone https://github.com/guelfoweb/knock.git
cd knock
pip3 install -r requirements.txt
cd ..

echo "installing gau ..."
go install github.com/lc/gau/v2/cmd/gau@latest

echo "downloading SecList ..."
wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip \
  && unzip SecList.zip \
  && rm -f SecList.zip


