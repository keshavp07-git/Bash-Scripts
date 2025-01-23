#!/bin/bash
value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)
if [ $value -eq 1 ];then
echo "1 active interface"
elif [ $value -gt 1 ];then
echo "Multiple interface found"
else "Not found"
fi
