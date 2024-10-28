#! /bin/bash

## ---
## Install Debian/Ubuntu packages.
## This script has to be executed as root.
## ---

echo ""
echo "################ WARNING! ################"
echo "                                          "
echo "  This script has to be executed as root  "
echo "                                          "
echo "------------------------------------------"
echo ""

# --- Install common packages
apt-get update && apt-get install -y \
  apt-transport-https \
  build-essential \
  ca-certificates \
  cron \
  curl \
  git \
  git-man \
  gitk \
  gnome-shell-extension-manager \
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
# arc-theme \

# --- Install softwares via snap
snap install docker gimp libreoffice postman slack
snap install --classic code
snap install --classic node

# --- Install Google Chrome
curl -fSsL https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor | sudo tee /usr/share/keyrings/google-chrome.gpg >/dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" >/etc/apt/sources.list.d/google-chrome.list
apt-get update && apt-get install -y google-chrome-stable

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
