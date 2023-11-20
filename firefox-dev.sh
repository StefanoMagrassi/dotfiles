#! /bin/bash

TARGET=~/.local/share/firefox-dev
UNZIPPED=firefox
BIN=~/.local/bin/firefox-dev
APP=~/.local/share/applications/firefox-dev.desktop
MIME_TYPES="text/html;text/xml;application/xhtml+xml;application/xml;application/rss+xml;application/rdf+xml;image/gif;image/jpeg;image/png;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;x-scheme-handler/chrome;video/webm;application/x-xpinstall;"

# ---
# Reference: https://www.rogerpence.com/posts/a-bash-script-to-install-firefox-dev-edition
# ---

# Get the lastest FFDE version number.
curl -o releases.txt https://download-installer.cdn.mozilla.net/pub/devedition/releases/
VERSION=$(grep -o '[0-9][0-9]\.[0-9][a-z][0-9]' releases.txt | tail -1)    
rm releases.txt    

# Get download file name.
FILE=firefox-$VERSION.tar.bz2

# Create /opt/firefox-dev if it doesn't exist.
if [ ! -d $TARGET ]
then 
	mkdir $TARGET
fi

# Get Firefox download.
curl -o $FILE https://download-installer.cdn.mozilla.net/pub/devedition/releases/$VERSION/linux-x86_64/en-US/$FILE

# If you don't get the file you specified, you get an HTML file with a '404 Not found' text in it.
if grep -iq '404 Not found' $FILE 
then
	clear
	echo Error...
	echo $FILE did not download.
	rm $FILE

else
	# Unzip the install file.
	tar xvjf $FILE

	# Clear the target directory.
	rm -rf ${TARGET}/*
	rm -f $BIN
	rm -f $APP

	# Move the program files to the target directory.
	mv ${UNZIPPED}/* $TARGET

	# Remove the unzipped install folder.
	rm -rf $UNZIPPED

	# Remove the install file.
	rm $FILE

	# Create bin symlink
	ln -s ${TARGET}/firefox $BIN

	# Create .desktop application
  echo "[Desktop Entry]" >> $APP
	echo "Name=Firefox Developer Edition" >> $APP
	echo "GenericName=Firefox Developer Edition" >> $APP
	echo "Exec=firefox-dev %u" >> $APP
	echo "StartupNotify=true" >> $APP
	echo "StartupWMClass=firefox-aurora" >> $APP
  echo "NoDisplay=false" >> $APP
	echo "Terminal=false" >> $APP
	echo "X-MultipleArgs=false" >> $APP
	echo "Icon=${TARGET}/browser/chrome/icons/default/default128.png" >> $APP
	echo "MimeType=${MIME_TYPES}" >> $APP
	echo "Type=Application" >> $APP
	echo "Categories=Application;Network;Development;WebBrowser" >> $APP
	echo "Comment=Firefox Developer Edition Web Browser" >> $APP
	echo "Actions=new-window;new-private-window;" >> $APP
	echo "" >> $APP
	echo "[Desktop Action new-window]" >> $APP
	echo "Name=Open a New Window" >> $APP
	echo "Exec=firefox-dev -new-window" >> $APP
	echo "" >> $APP
	echo "[Desktop Action new-private-window]" >> $APP
	echo "Name=Open a New Private Window" >> $APP
	echo "Exec=firefox-dev -private-window" >> $APP

	echo "Firefox Dev Edition $1 installed."
fi
