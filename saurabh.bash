Saurabh
- [ ] pip
- [ ] python 2.7 and 3.7
- [ ] Django
- [ ] numpy
- [ ] Vs code

python3:

sudo apt update
sudo apt -y upgrade
sudo apt install -y python3-venv
update-alternatives --install /usr/bin/python python /usr/bin/python3 1 #sets python3 as default python

python2:

sudo apt install python-minimal
python --version


pip:

sudo apt update
sudo apt install python3-pip -y
which pip3	#creates a sym link of pip for pip3
ln -s /usr/bin/pip3 /usr/bin/pip


Numpy:

sudo apt install python-numpy

Django:
pip install Django==2.0.5

VS Code:
sudo apt updatesudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code