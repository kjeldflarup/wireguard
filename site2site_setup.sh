
# Immediate (runtime)
sudo sysctl -w net.ipv4.ip_forward=1
sudo sysctl -w net.ipv4.conf.all.forwarding=1

# Persist across reboots
echo -e "net.ipv4.ip_forward=1\nnet.ipv4.conf.all.forwarding=1" | sudo tee /etc/sysctl.d/99-wireguard.conf
sudo sysctl --system


