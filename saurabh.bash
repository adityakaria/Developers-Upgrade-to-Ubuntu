
Saurabh
- [ ] pip
- [ ] python 2.7 and 3.7
- [ ] Django
- [ ] numpy
- [ ] Vs code


python2:

sudo apt install python-minimal
python --version


python3:

sudo apt update
sudo apt -y upgrade
sudo apt install -y python3-venv
update-alternatives --install /usr/bin/python python /usr/bin/python3 1 #sets python3 as default python


pip:

sudo apt install python3-pip -y
which pip3	#creates a sym link of pip for pip3
ln -s /usr/bin/pip3 /usr/bin/pip
pip install --upgrade pip


Numpy:

sudo apt install python-numpy
Y

Django:
pip install Django==2.1.3

VS Code:
sudo apt install curl
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code

