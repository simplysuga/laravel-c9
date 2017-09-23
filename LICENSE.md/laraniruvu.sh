#!/bin/bash

echo Installation started ...

# Updating packages and repository
rm README.md hello-world.html
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update -y
sudo apt-get install -y python-software-properties

# Upgrading PHP version to 7 
sudo apt-get install php7.1

# Installing Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

#Adding composer path to system path:
echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.bashrc

# DOM extension or dependecies:
sudo apt-get install php-xml
sudo apt-get install php7.1-zip
sudo apt-get install php7.1-mbstring
sudo apt-get install php7.1-mysql
sudo apt-get install php7.1-sqlite

# Installing Laravel: (and creating a new project)
function lara(){
    sudo apt-get update -y
    echo 'laravel start:' $(date)
    composer global require 'laravel/installer'
    echo 'laravel end:' $(date)
    sudo apt-get update -y
}
lara

echo 'Installion completed successfully!'
echo 'Please restart machine and Run $ "laravel new <projectname>"'
#php artisan serve --host=$IP --port=$PORT
echo 'Inside new project run $php artisan serve --host=$IP --port=8082'
