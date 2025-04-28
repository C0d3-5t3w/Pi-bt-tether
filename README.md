Pi-bt-tether:

Allows you to use your pi over bluetooth network.

# First you need to make the bluetooth connection that we'll modify:

```
sudo bluetoothctl
```

```
scan on
```

```
pair <Your phone's MAC address>
```

```
yes
```

```
trust <Your phone's MAC address>
```

```
default-agent
```

```
exit
```

# Aquire bt-tether.sh:

```bash
sudo wget "https://raw.githubusercontent.com/C0d3-5t3w/Pi-bt-tether/refs/heads/main/bt-tether.sh"
```

# Make sure its executable:

```bash
sudo chmod +x bt-tether.sh
```

# Now you can run: 

```bash
sudo ./bt-tether.sh 
```

# You should be given these options:

* Enter Bluetooth device MAC (e.g., A1:11:1B:C1:D1:E1):

* Enter phone connection name (e.g., 5T3W):

* Enter static ip (e.g., 172.20.10.1 for ios 192.168.44.1 for andriod):

* Enter gateway (e.g., 255.255.255.0):

# Now to make sure network priority is what you want:

```bash
sudo apt-get install ifmetric
```

* You can view network metics using 'route -n' 

* The lower the metric the higher the priority

# If you want to give me a tip i accept monero:

```
462ZrXQjmJnD9hpp55ckEMccGGrLrknSFSxesChuPz2FJ4MeYyyaVkYVrynU1tn2ZgSJGJBHm9ZAMA2jzck5RWhK2aUQKA2
```
