#! /bin/bash

## ---
## Install Debian/Ubuntu packages.
## This script has to be executed as root.
## ---

echo ""
echo "################ WARNING! ################"
echo "                                          "
echo "  This script as to be executed as root   "
echo "                                          "
echo "------------------------------------------"
echo ""

DISTRO="$(lsb_release -s -c)"
NODE_VERSION=20.x

# --- Install common packages
apt-get update && apt-get install -y \
  arc-theme \
  apt-transport-https \
  build-essential \
  ca-certificates \
  cron \
  curl \
  gimp \
  git \
  git-man \
  gitk \
  gnupg \
  htop \
  make \
  man-db \
  manpages \
  meld \
  net-tools \
  numix-icon-theme-circle \
  openssh-client \
  openssh-server \
  openssl \
  python3 \
  python3-dev \
  rsync \
  sed \
  software-properties-common \
  snapd \
  tar \
  telnet \
  terminator \
  tzdata \
  vim \
  wget \
  zip \
  unzip

# --- Install Docker
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
chmod a+r /etc/apt/keyrings/docker.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" > /etc/apt/sources.list.d/docker.list
apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# --- Install Nodejs
curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION} | sudo -E bash - &&\
apt-get update && apt-get install -y nodejsi

# --- Install Google Chrome
curl -fSsL https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor | sudo tee /usr/share/keyrings/google-chrome.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
apt-get update && apt-get install -y google-chrome-stable

# --- Install VSCode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list
rm -f packages.microsoft.gpg
apt-get update && apt-get install -y code

# --- Git completion
curl -O https://raw.githubusercontent.com/git/git/v2.25.1/contrib/completion/git-completion.bash
mv git-completion.bash /etc/bash_completion.d/

# --- Install Postman via snap
snap install postman

echo ""
echo "###############"
echo "               "
echo "  Well done!   "
echo "               "
echo "---------------"
echo ""
