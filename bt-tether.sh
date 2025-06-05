#!/bin/bash

# Author: C0D3-5T3W <github.com/C0d3-5t3w> under MIT License

# Usage: sudo ./bt-tether.sh

# Check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Prompt user for input
read -p "Enter Bluetooth device MAC (e.g., A1:11:1B:C1:D1:E1): " -r BT_DEVICE
read -p "Enter phone connection name (e.g., 5T3W): " -r CONNECTION_NAME
read -p "Enter static ip (e.g., 172.20.10.1 for ios 192.168.44.1 for andriod): " -r STATIC_IP
read -p "Enter gateway (e.g., 255.255.255.0): " -r GATEWAY_IP

# Execute nmcli with user input
nmcli connection modify "$CONNECTION_NAME Network" connection.autoconnect "yes" connection.type "bluetooth" bluetooth.type "panu" bluetooth.bdaddr "$BT_DEVICE" ipv4.method "manual" ipv4.dns "8.8.8.8" ipv4.addresses "$STATIC_IP/24" ipv4.gateway "$GATEWAY_IP" ipv4.route-metric "100"
