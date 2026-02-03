#!/bin/bash

set -ouex pipefail

/ctx/brave.sh

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

dnf -y install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release

dnf5 -y install --enable-repo terra ghostty headsetcontrol gnome-shell-extension-no-overview

dnf5 -y copr enable dwmw2/openconnect
dnf5 -y update NetworkManager-openconnect openconnect
dnf5 -y copr disable dwmw2/openconnect

dnf5 clean all
