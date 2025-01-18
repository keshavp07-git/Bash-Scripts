#!/bin/bash

#  GETTING DEPENDENCIES
echo "Installing Dependencies"
echo "--------------------------------------------------------------------------"

sudo yum install wget httpd unzip -y > /dev/null


# ENABLING SERVICES
echo "Enabling Services (httpd)"
echo " -------------------------------------------------------------------------"

sudo systemctl start httpd
sudo systemctl enable httpd

# CREATING DIRECTORIES
echo "Creating Directories for Template"

mkdir -p /tmp/webfiles/
cd /tmp/webfiles/


echo "Getting Template and setting up Please wait...."
echo "-------------------------------------------------------------------------"

wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null

unzip 2098_health.zip > /dev/null

cp -r 2098_health/* /var/www/html > /dev/null

systemctl restart httpd


rm -rf /tmp/webfiles/

echo "-------------------------------------------------------------------------"
echo "Website Setting up Done Check IP to see in Browser"

echo"--------------------------------------------------------------------------"

ip addr show

echo "-------------------------------------------------------------------------"

