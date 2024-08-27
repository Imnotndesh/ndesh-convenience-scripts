#!/usr/bin/bash

install_path="/usr/local"
prev_path="/usr/local/bin"
latest_version=curl "https://go.dev/VERSION?m=text"

# Url definition
url="https://go.dev/dl/${latest_version}.linux-amd64.tar.gz"

# Fetch installer
wget url

# Previous install check
if [[ -d $prev_path ]]; then
    echo "Removing previous installation"
    sudo rm $prev_path
fi

# Extraction
echo "Extracting archive to path"
tar -C $install_path -xzf go*.tar.gz

# Add to bash profile
PATH=$PATH:/usr/local/go/bin >> ~/.bash_profile

# Check if its installed
go version