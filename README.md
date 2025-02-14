# Bjorn-bt-tether:

Allows you to use Bjorn or any pi over bluetooth network.

# First you need to make the bluetooth connection that we'll modify:

sudo bluetoothctl

scan on

pair <Your phone's MAC address>

yes

trust <Your phone's MAC address>

default-agent

exit

# Aquire bt-tether.sh:

sudo wget "https://raw.githubusercontent.com/C0d3-5t3w/Bjorn-bt-tether/refs/heads/main/bt-tether.sh"

# Make sure its executable:

sudo chmod +x bt-tether.sh

# Now you can run: 

sudo ./bt-tether.sh 

# You should be given these options:

Enter Bluetooth device MAC (e.g., A1:11:1B:C1:D1:E1):

Enter phone connection name (e.g., 5T3W):

Enter static ip (e.g., 172.20.10.6 for ios 192.168.44.1 for andriod):

Enter gateway (e.g., 255.255.255.0):

# Now to make ure network priority wont cause bjorn to scan the bt network:

sudo apt-get install ifmetric

sudo ifmetric wlan0 50

sudo ifmetric bnep0 100

sudo reboot

# ENJOY!!! if you have any issues find and @ me in the Bjorn discord: 

https://discord.gg/tJxEes2G

# If you want to give me a tip i accept monero:

462ZrXQjmJnD9hpp55ckEMccGGrLrknSFSxesChuPz2FJ4MeYyyaVkYVrynU1tn2ZgSJGJBHm9ZAMA2jzck5RWhK2aUQKA2

