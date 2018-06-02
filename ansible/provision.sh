whoami
sudo apt-get update
sudo apt-get install build-essential libssl-dev libffi-dev python-dev python-pip -y
pip install --upgrade --user setuptools
pip install --user ansible
pip install --user 'dopy>=0.3.5,<=0.3.5'
echo export PATH=$PATH:/home/vagrant/.local/bin/ > ~/.profile