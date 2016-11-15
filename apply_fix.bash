#!/usr/bin/env bash

pushd $(pwd);
cd ~/Desktop;
sudo dpkg -i dkms*.deb;
sudo dpkg -i bcmwl*.deb;
popd;
