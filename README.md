# Bjorn-bt-tether

Allows you to use Bjorn over bluetooth network.

# First you need to connect make the bluetooth connection

sudo bluetoothctl
scan on
pair <Your phone's MAC address>
yes
trust <Your phone's MAC address>
connect <Your phone's MAC address>
default-agent
exit

# now you can run 'sudo ./bt-tether.sh' and you should be given these options:

Enter Bluetooth device MAC (e.g., A1:11:1B:C1:D1:E1):
Enter phone connection name (e.g., 5T3W):
Enter static ip (e.g., 172.20.10.6 for ios 192.168.44.1 for andriod):
Enter gateway (e.g., 255.255.255.0):

# after that reboot and your device should connect to the bluetooth network giving you internet access while not on a wifi network and to create a persistent and mobile connection without cords between wifi network hops.

