#! /bin/bash

# Set downloaded file name
FILE=postman-latest.tar.gz
TARGET=/opt/postman
UNZIPPED=Postman
BIN=/usr/bin/postman
APP=/usr/share/applications/postman.desktop

# Create /opt/postman if it doesn't exist.
if [ ! -d $TARGET ]
then 
	mkdir $TARGET
fi

# Get Firefox download.
curl -o $FILE https://dl.pstmn.io/download/latest/linux64

# Unzip the install file.
tar xvf $FILE

# Clear the target.
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
ln -s ${TARGET}/app/Postman $BIN

# Create .desktop application
echo "[Desktop Entry]" >> $APP
echo "Name=Postman" >> $APP
echo "GenericName=Postman" >> $APP
echo "Exec=postman" >> $APP
echo "Terminal=false" >> $APP
echo "Icon=${TARGET}/app/resources/app/assets/icon.png" >> $APP
echo "Type=Application" >> $APP
echo "Categories=Application;Development" >> $APP
echo "Comment=Postman" >> $APP

echo "Postman installed."