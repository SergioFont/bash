# Creating  wlan interfaces and wireless network (as access point) for Linux to prove the pwnwifi
# Fill the variable with your value

wifiname='wifiparrot' # Name of the wifi
radios=2 # Number of wlan interfaces to create

sudo modprobe mac80211_hwsim radios=$radios
sudo ip netns add $wifiname
sudo ip netns list

sudo ip netns exec $wifiname bash


# Execute in other prompt
sudo iw phy phy0 set netns 2173

gnome-terminal --tab --title="wlan0" --command="bash -c 'ip link; pidof bash; $SHELL'" --tab --title="wlan1" --command="bash -c 'ip link; pidof bash; $SHELL'"

gnome-terminal --tab --title="tab 1" --command="bash -c 'cd /etc; ls; $SHELL'" --tab --title="tab 2" --command="bash -c 'cd ~; ls; $SHELL'" --tab --title="tab 3" --command="bash -c 'cd ~/temp3; ls; $SHELL'"


sudo apt-get install hostapd