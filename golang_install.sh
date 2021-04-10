#!/bin/bash

wget https://dl.google.com/go/go1.14.13.linux-amd64.tar.gz
tar xf go1.14.13.linux-amd64.tar.gz
sudo mv go /usr/local/

sed -i '/GOROOT/d' ~/.bashrc
sed -i '/GOROOT/d' ~/.profile

sed -i '/GOPATH/d' ~/.bashrc
sed -i '/GOPATH/d' ~/.profile

mkdir $HOME/gopath

echo 'export  GOPATH=$HOME/gopath' >> ~/.profile
echo 'export  GOROOT=/usr/local/go' >> ~/.profile
echo 'export  PATH=$PATH:$GOROOT/bin' >> ~/.profile
echo 'export  PATH=$PATH:$GOPATH/bin' >> ~/.profile

sudo rm -rf ./go1*
