#!/bin/bash

if ! command -v snap &> /dev/null
then
    echo "snapd is not installed. Installing..."
    sudo apt update
    sudo apt install snapd
else
    echo "snapd is already installed."
fi

if ! snap list | grep -q core
then
    echo "Snap core is not installed. Installing..."
    sudo snap install core
else
    echo "Snap core is already installed."
fi

if ! snap list | grep -q telegram-desktop
then
    echo "Telegram Desktop is not installed. Installing..."
    sudo snap install telegram-desktop
else
    echo "Telegram Desktop is already installed."
fi
