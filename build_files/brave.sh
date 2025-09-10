#!/usr/bin/env bash

set -ouex pipefail

# Extract the architecture from the kernel package
arch=$(rpm -q kernel --qf "%{ARCH}\n" | head -n1)

# Check if the architecture is aarch64
if [[ "$arch" == "aarch64" ]]; then
    echo "Brave browser does not create aarch64 packages"
    exit 0
fi

# Prepare staging directory
mkdir -p /var/opt

dnf5 config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

dnf5 install -y brave-browser

dnf5 config-manager setopt brave-browser.enabled=0

# Move the application to somewhere on the final image
mv /var/opt/brave.com /usr/lib/brave.com

# Register path symlink
cat >/usr/lib/tmpfiles.d/eternal-brave.conf <<EOF
L  /opt/brave.com  -  -  -  -  /usr/lib/brave.com
EOF

mkdir -p /usr/share/user-tmpfiles.d

# Workaround to remove Brave browser profile locks
cat >/usr/share/user-tmpfiles.d/brave-locks.conf <<EOF
r  %h/.config/BraveSoftware/Brave-Browser/Singleton*  -  -  -  -  -
EOF
