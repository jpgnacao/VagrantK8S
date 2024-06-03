   sudo apt update
   sudo apt install wget curl vim git kubelet kubeadm kubectl -y
   sudo apt-mark hold kubelet kubeadm kubectl
   kubectl version --client
   kubeadm version
   sudo swapoff -a 
   free -h
   sudo sed -i.bak -r 's/(.+swap.+)/#\1/' /etc/fstab
   grep swap /etc/fstab
   sudo mount -a
   free -h
   # Enable kernel modules
   sudo modprobe overlay
   sudo modprobe br_netfilter
   sudo tee /etc/sysctl.d/kubernetes.conf<<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF
   sudo sysctl --system
