#!/bin/bash

# Checks if the script is run as root
if [[ "$EUID" -ne 0 ]]; then
        echo "You must use sudo or be logged in as root to run this script."
        exit 1
fi

# Checks for apt
if ! command -v apt &>/dev/null; then
        echo "This script needs the apt package manager."
        exit 1
else
        echo "Apt is on this system."
fi

# Checks for yes or no input by user
read -p "Do you want to install Singularity? (y/n): " proceed
if [[ "$proceed" != "y" ]]; then
        echo "Install cancelled."
        exit 0
fi

# Checks for a singularity command
if command -v singularity &>/dev/null; then
        echo "There is already a 'singularity' command"
        exit 1
fi

# Updates apt and installs dependencies
echo "Installing dependencies..."
sudo apt update -y
sudo apt install -y autoconf \
        automake \
        cryptsetup \
        fuse2fs \
        git \
        fuse \
        libfuse-dev \
        libseccomp-dev \
        libtool \
        pkg-config \
        runc \
        squashfs-tools \
        squashfs-tools-ng \
        uidmap \
        wget \
        zlib1g-dev \
        golang-go

# Sets up Go
echo "Setting up Go..."
export VERSION=1.24.1 OS=linux ARCH=amd64 && \
    wget https://dl.google.com/go/go$VERSION.$OS-$ARCH.tar.gz && \
    sudo tar -C /usr/local -xzvf go$VERSION.$OS-$ARCH.tar.gz && \
    rm go$VERSION.$OS-$ARCH.tar.gz

echo 'export GOPATH=${HOME}/go' >> ~/.bashrc && \
    echo 'export PATH=/usr/local/go/bin:${PATH}:${GOPATH}/bin' >> ~/.bashrc && \
    source ~/.bashrc

# Installs Singularity
echo "Installing Singularity..."
export VERSION=4.3.0 && # adjust this as necessary \
    wget https://github.com/sylabs/singularity/releases/download/v${VERSION}/singularity-ce-${VERSION}.tar.gz && \
    tar -xzf singularity-ce-${VERSION}.tar.gz && \
    cd singularity-ce-${VERSION}

# Builds Singularity
echo "Building Singularity..."
./mconfig --without-libsubid && \
    make -C ./builddir && \
    sudo make -C ./builddir install

# Clean up
rm -rf singularity-${VERSION}*

# Install complete messages
echo "Singularity installation complete."
echo "Please try running 'singularity --version' to make sure it works."
