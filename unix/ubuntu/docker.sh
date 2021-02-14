curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
newgrp docker
docker login
sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker
