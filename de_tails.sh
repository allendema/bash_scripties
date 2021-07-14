#!/bin/bash

# Get Battery Informations

cd /sys/class/power_supply/BAT0

charging_status=$(cat status)
manufacturer=$(cat manufacturer)

# Get OS, Network  and Hardware Informations

ip=$(hostname -I)
dns=$(cat /etc/resolv.conf | grep nameserver)
os=$(cat /etc/issue)
hw_infos=$(hostnamectl)

echo $manufacturer
echo $charging_status

echo Your IP-Addres is: $ip
echo Your DNS is: $dns
echo You are running $os

echo Seeya $USER
