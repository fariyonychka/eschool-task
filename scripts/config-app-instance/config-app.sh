#!/bin/bash
set -e
sudo apt update -y
sudo apt install openjdk-8-jdk -y
sudo apt install maven -y
sudo apt install git -y
cd ~
git clone https://github.com/yurkovskiy/eSchool.git