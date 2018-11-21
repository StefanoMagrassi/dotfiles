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

# --- Install common packages
apt-get update && apt-get install -y \
  apt-transport-https \
  build-essential \
  cmake \
  cron \
  curl \
  git \
  git-man \
  gitk \
  htop \
  make \
  man-db \
  manpages \
  meld \
  net-tools \
  nginx \
  openssh-client \
  openssh-server \
  openssl \
  python \
  python3 \
  python3-dev \
  rsync \
  sed \
  tar \
  telnet \
  terminator \
  tzdata \
  vim \
  wget \
  xvfb \
  zip

# --- Install Nodejs
NODE_VERSION=node_10.x
DISTRO="$(lsb_release -s -c)"

echo "deb https://deb.nodesource.com/$VERSION $DISTRO main" > /etc/apt/sources.list.d/nodesource.list
apt-get update && apt-get install -y nodejs

# --- Install Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
apt-get update && apt-get install -y google-chrome-stable

# --- Install Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
apt-get update && apt-get install -y yarn

# --- Install VSCode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list
apt-get update && apt-get install -y code

echo ""
echo "###############"
echo "               "
echo "  Well done!   "
echo "               "
echo "---------------"
echo ""
