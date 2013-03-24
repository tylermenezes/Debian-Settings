#!/bin/bash

sudo add-apt-repository -y ppa:ondrej/php5
sudo apt-get update
sudo apt-get install apache2 libapache2-mod-php5 mysql-server php5-mysql php-pear
sudo pear install mdb2 "mdb2#mysql" "mdb2#mysqli"
sudo service apache2 restart
