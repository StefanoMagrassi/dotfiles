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
NODE_VERSION=node_14.x

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
  openjdk-11-jdk \
  openssh-client \
  openssh-server \
  openssl \
  python \
  python3 \
  python3-dev \
  rsync \
  sed \
  software-properties-common \
  tar \
  telnet \
  terminator \
  tzdata \
  vim \
  wget \
  zip \
  unzip

# --- Install Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $DISTRO stable"
apt-get update && apt-get install -y docker-ce

# --- Install Nodejs
curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
echo "deb https://deb.nodesource.com/$NODE_VERSION $DISTRO main" > /etc/apt/sources.list.d/nodesource.list
apt-get update && apt-get install -y nodejs

# --- Install Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
apt-get update && apt-get install -y google-chrome-stable

# --- Install VSCode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list
apt-get update && apt-get install -y code

# --- Install Azure CLI
curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $DISTRO main" > /etc/apt/sources.list.d/azure-cli.list
apt-get update && apt-get install -y azure-cli

# --- Git completion
curl -O https://raw.githubusercontent.com/git/git/v2.25.1/contrib/completion/git-completion.bash
mv git-completion.bash /etc/bash_completion.d/

echo ""
echo "###############"
echo "               "
echo "  Well done!   "
echo "               "
echo "---------------"
echo ""
