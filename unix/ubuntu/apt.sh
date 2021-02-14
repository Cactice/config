sudo apt-get install \
git \
curl \
zsh \
vim \
# Japanese
sudo apt-get install \
language-pack-gnome-ja \
language-pack-ja \
firefox-locale-ja \
fonts-noto-cjk-extra \
ibus-mozc \
# GUI
sudo apt-get install \
guake \

# git secret management
sudo apt-get install \
libsecret-1-0 libsecret-1-dev \
fonts-firacode

# Nvidia Docker
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
