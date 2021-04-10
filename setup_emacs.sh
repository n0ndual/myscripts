sudo apt update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt remove emacs
sudo apt autoremove
sudo apt install emacs27

rm -rf ~/.emacs.d

sudo chmod +x ./pbcopy

sudo mv ./pbcopy /usr/local//bin/

git clone https://github.com/n0ndual/emacs.d ~/.emacs.d
