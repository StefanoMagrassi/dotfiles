#! /bin/bash

source ./_utils.sh

SOURCE_PATH=$(pwd)/config/xfce4
TARGET_PATH=~/.config/xfce4

echo "> start XFCE4 setup"

# --- PANEL
PANEL=panel
PANEL_FILES=(whiskermenu-12.rc)

ensure_and_make_link $SOURCE_PATH/$PANEL $TARGET_PATH/$PANEL ${PANEL_FILES[@]}

# --- TERMINAL
TERMINAL=terminal
TERMINAL_FILES=(terminalrc)

ensure_and_make_link $SOURCE_PATH/$TERMINAL $TARGET_PATH/$TERMINAL ${TERMINAL_FILES[@]}

# --- PERCHANNEL
PERCHANNEL=xfconf/xfce-perchannel-xml
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

ensure_and_make_link $SOURCE_PATH/$PERCHANNEL $TARGET_PATH/$PERCHANNEL ${PERCHANNEL_FILES[@]}

echo "> end XFCE4 setup"

