#!/bin/bash

echo "Starting installation of the Blue Archive Shittim Chest Theme..."

TMP_DIR=$(mktemp -d)
cd "$TMP_DIR" || exit

echo "Downloading assets from GitHub..."
curl -sSL https://github.com/Sadowski-Krystian/Blue-Archive-Theme-KDE-Plasma/archive/refs/heads/main.tar.gz -o theme.tar.gz

echo "Extracting files..."
tar -xzf theme.tar.gz
cd Blue-Archive-Theme-KDE-Plasma-main || exit

echo "Preparing directories..."
mkdir -p ~/.local/share/aurorae/themes
mkdir -p ~/.local/share/color-schemes
mkdir -p ~/.local/share/plasma/desktoptheme
mkdir -p ~/.local/share/icons
mkdir -p ~/.local/share/plasma/look-and-feel
mkdir -p ~/.local/share/sounds
mkdir -p ~/.local/share/wallpapers

echo "Installing files..."
cp -r aurorae/* ~/.local/share/aurorae/themes/ 2>/dev/null
cp -r color-schemes/* ~/.local/share/color-schemes/ 2>/dev/null
cp -r desktoptheme/* ~/.local/share/plasma/desktoptheme/ 2>/dev/null
cp -r icons/* ~/.local/share/icons/ 2>/dev/null
cp -r look-and-feel/* ~/.local/share/plasma/look-and-feel/ 2>/dev/null
cp -r sounds/* ~/.local/share/sounds/ 2>/dev/null
cp -r wallpapers/* ~/.local/share/wallpapers/ 2>/dev/null

echo "Cleaning up..."
cd ~ || exit
rm -rf "$TMP_DIR"

echo "Installation Complete! You can now apply the theme in KDE System Settings."
