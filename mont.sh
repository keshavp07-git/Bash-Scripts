#!/bin/bash
echo "----------------------------------------"
date
# ls /var/run/httpd/httpd.pid &> /dev/null
if [ -f /var/run/httpd/httpd.pid ];then # can use also   if [ $? -eq 0 ];then
echo "----------------------------------------"
echo "Httpd Process is already running"
echo "----------------------------------------"
else
echo "----------------------------------------"
echo "Httpd Process is not running"
echo "Starting Httpd service"
echo "----------------------------------------"
systemctl start httpd
if [ $? -eq 0 ];then
echo "----------------------------------------"
echo "Httpd Process Started"
echo "----------------------------------------"
else
echo "----------------------------------------"
echo "Failed to Start"
echo "----------------------------------------"
fi
fi
