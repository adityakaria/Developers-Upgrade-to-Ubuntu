#google-chrome:
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome*.deb
sudo apt-get install -f
#pandas
pip install pandas --user
#atom ide
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update
sudo apt install atom
#javascript
sudo apt install rhino
