#! /bin/bash

SOURCE_PATH=$(pwd)/xfce4
TARGET_PATH=~/.config/xfce4

echo "> start XFCE4 setup"

# --- PANEL
PANEL=panel
TARGET_PANEL_PATH=$TARGET_PATH/$PANEL
PANEL_FILES=(whiskermenu-12.rc)

echo ">> ensure panel folder and config..."

mkdir -p $TARGET_PANEL_PATH

for file in ${PANEL_FILES[@]}
do
  rm -f $TARGET_PANEL_PATH/$file
  ln -s $SOURCE_PATH/$PANEL/$file $TARGET_PANEL_PATH/$file
done

echo ">>> done"

# --- TERMINAL
TERMINAL=terminal
TARGET_TERMINAL_PATH=$TARGET_PATH/$TERMINAL
TERMINAL_FILES=(terminalrc)

echo ">> ensure terminal folder and config..."

mkdir -p $TARGET_TERMINAL_PATH

for file in ${TERMINAL_FILES[@]}
do
  rm -f $TARGET_TERMINAL_PATH/$file
  ln -s $SOURCE_PATH/$TERMINAL/$file $TARGET_TERMINAL_PATH/$file
done

echo ">>> done"

# --- PERCHANNEL
PERCHANNEL=xfconf/xfce-perchannel-xml
TARGET_PERCHANNEL_PATH=$TARGET_PATH/$PERCHANNEL
PERCHANNEL_FILES=(
  thunar.xml 
  xfce4-desktop.xml 
  xfce4-keyboard-shortcuts.xml 
  xfce4-notifyd.xml
  xfce4-panel.xml
  xfce4-power-manager.xml
  xfce4-session.xml
  xfce4-settings-manager.xml
  xfwm4.xml
  xsettings.xml
)

echo ">> ensure perchannel folder and config..."

mkdir -p $TARGET_PERCHANNEL_PATH

for file in ${PERCHANNEL_FILES[@]}
do
   rm -f $TARGET_PERCHANNEL_PATH/$file
   ln -s $SOURCE_PATH/$PERCHANNEL/$file $TARGET_PERCHANNEL_PATH/$file
done

echo ">>> done"

echo "> end XFCE4 setup"

