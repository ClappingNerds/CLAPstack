#!/bin/bash

# Update package lists and install required packages
apt-get update && apt-get install -y \
    openssh-server \
    sudo \
    fish \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Create a new user 'user' with password 'password' and add to sudo
useradd -ms /bin/bash user && \
    echo "user:password" | chpasswd && \
    adduser user sudo

# Enable SSH login
mkdir /var/run/sshd
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
echo 'user:password' | chpasswd

# Change the default shell to Fish for 'user'
chsh -s /usr/bin/fish user

pip install --no-cache-dir numpy
