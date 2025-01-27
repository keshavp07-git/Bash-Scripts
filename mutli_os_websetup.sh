#!/bin/bash

#  VARIABLE DECLRATIONS

URL="https://www.tooplate.com/zip-templates/2098_health.zip"
ART="2098_health"
TEMP="/tmp/webfiles/"

yum --help &> /dev/null

if [ $? -eq 0 ]; then

PACKAGE="httpd wget unzip"

SRV="httpd"

#  GETTING DEPENDENCIES FOR CENTOS
echo "Installing Dependencies"
echo "--------------------------------------------------------------------------"

sudo yum install $PACKAGE -y > /dev/null


# ENABLING SERVICES
echo "Enabling Services (httpd)"
echo " -------------------------------------------------------------------------"

sudo systemctl start $SRV
sudo systemctl enable $SRV

# CREATING DIRECTORIES
echo "Creating Directories for Template"

mkdir -p $TEMP
cd $TEMP


echo "Getting Template and setting up Please wait...."
echo "-------------------------------------------------------------------------"

wget $URL > /dev/null

unzip $ART.zip > /dev/null

cp -r $ART/* /var/www/html > /dev/null

systemctl restart $SRV


rm -rf $TEMP

echo "-------------------------------------------------------------------------"
echo "Website Setting up Done Check IP to see in Browser"

echo"--------------------------------------------------------------------------"
ip addr show
echo "-------------------------------------------------------------------------"

else

PACKAGE="apache2 wget unzip"
SRV="apache2"
#  GETTING DEPENDENCIES FOR UBUNTU
echo "Installing Dependencies"
echo "--------------------------------------------------------------------------"

sudo yum install $PACKAGE -y > /dev/null


# ENABLING SERVICES
echo "Enabling Services (apache2)"
echo " -------------------------------------------------------------------------"

sudo systemctl start $SRV
sudo systemctl enable $SRV

# CREATING DIRECTORIES
echo "Creating Directories for Template"

mkdir -p $TEMP
cd $TEMP


echo "Getting Template and setting up Please wait...."
echo "-------------------------------------------------------------------------"

wget $URL > /dev/null

unzip $ART.zip > /dev/null

cp -r $ART/* /var/www/html > /dev/null

systemctl restart $SRV


rm -rf $TEMP

echo "-------------------------------------------------------------------------"
echo "Website Setting up Done Check IP to see in Browser"

echo"--------------------------------------------------------------------------"
ip addr show
echo "-------------------------------------------------------------------------"
fi




