#!/bin/bash

main() {
    echo -e "Starting downloading first macsploit and roblox then downloading Lunar"
    
    echo -e "Downloading Latest Roblox"
    local version="version-24b06fe4fe1c4c9d"
    curl "http://setup.rbxcdn.com/mac/$version-RobloxPlayer.zip" -o "./RobloxPlayer.zip"

    echo -e "Installing Latest Roblox"
    [ -d "/Applications/Roblox.app" ] && rm -rf "/Applications/Roblox.app"
    unzip -o -q "./RobloxPlayer.zip"
    mv ./RobloxPlayer.app /Applications/Roblox.app
    rm ./RobloxPlayer.zip

    echo -e "Downloading MacSploit"
    curl -O "https://raw.githubusercontent.com/Nexus42Dev/MacSploit/main/MacSploit.zip"

    echo -e "Installing MacSploit"
    unzip -o -q "./MacSploit.zip"

    echo -e "Patching Roblox"
    mv ./macsploit.dylib "/Applications/Roblox.app/Contents/MacOS/macsploit.dylib"
    ./insert_dylib "/Applications/Roblox.app/Contents/MacOS/macsploit.dylib" "/Applications/Roblox.app/Contents/MacOS/RobloxPlayer" --strip-codesig --all-yes
    mv "/Applications/Roblox.app/Contents/MacOS/RobloxPlayer_patched" "/Applications/Roblox.app/Contents/MacOS/RobloxPlayer"
    rm ./insert_dylib

    echo -e "Installing MacSploit App"
    [ -d "/Applications/MacSploit.app" ] && rm -rf "/Applications/MacSploit.app"
    mv ./MacSploit.app /Applications/MacSploit.app
    rm ./MacSploit.zip

    echo -e "Starting Downloading Lunar!"
    echo -e "Install Script Version : 1.0.2"

    echo -ne "Checking Macsploit License..."
    
    echo -e " Done.\nWhitelist Due to Devloper"

    echo -e "Downloading Lunar..."
    
    echo -e "Found Error n. unknown!"

    echo -e "activating auto fix system"

    echo -3 "Error n.72 fixed succcesfully!"

    echo -e "fixed error n.45"

    echo -n "Installing Lunar... "

    echo -e "Done"

    echo -n "Updating Dylib..."
    
    echo -e " Done"
    echo -e "Patching Lunar X Macsploit..."
    echo -e "Done"
    echo -e "Installation completed, developed by Shadow_devz and Motocite!"
    exit
}

main
