#!/bin/bash
ls /var/run/httpd/httpd.pid &> /dev/null
if [ $? -eq 0 ];then
echo "Httpd Process is already running"
else
echo "Httpd Process is not running"
echo "Starting Httpd service"
systemctl start httpd
if [ $? -eq 0 ];then
echo "Httpd Process Started"
else
echo "Failed to Start"
fi
fi
