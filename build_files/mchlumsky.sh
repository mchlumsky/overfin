#!/usr/bin/env bash

set -ouex pipefail

# Setup repo
cat << EOF > /etc/yum.repos.d/mchlumsky.repo
[mchlumsky]
name=mchlumsky repository (mracek, etc...)
baseurl=https://yum.fury.io/mchlumsky/
enabled=0
gpgcheck=0
EOF

mkdir -p /var/usrlocal/share/zsh/

dnf install -y --enablerepo=mchlumsky mracek kongvisor

rm -f /etc/yum.repos.d/mchlumsky.repo
