#!/bin/bash

# install postgresql
sudo apt update -y

sudo apt install postgresql postgresql-contrib -y

#start postgresql server
sudo systemctl start postgesql.service

#create db user
sudo -u postgres createuser preciuz

#create db and give permission to user
sudo -u postgres createdb exam --owner=preciuz