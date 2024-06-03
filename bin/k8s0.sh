
sudo apt install -y apt-transport-https ca-certificates curl gpg

VER=1.29
echo ----
echo "curl -fsSL https://pkgs.k8s.io/core:/stable:/v${VER}/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg"
echo ----
curl -fsSL https://pkgs.k8s.io/core:/stable:/v${VER}/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v${VER}/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list
