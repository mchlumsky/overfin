# Overfin

[![Build container image](https://github.com/mchlumsky/overfin/actions/workflows/build.yml/badge.svg)](https://github.com/mchlumsky/overfin/actions/workflows/build.yml)
[![Build disk images](https://github.com/mchlumsky/overfin/actions/workflows/build-disk.yml/badge.svg)](https://github.com/mchlumsky/overfin/actions/workflows/build-disk.yml)
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/overfin)](https://artifacthub.io/packages/search?repo=overfin)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![BuyMeACoffee](https://raw.githubusercontent.com/pachadotdev/buymeacoffee-badges/main/bmc-donate-yellow.svg)](https://www.buymeacoffee.com/martinchlumsky)

This is [Project Bluefin](https://projectbluefin.io/) (latest tag + intel/amd graphics) with some packages that I use on top.
It's built using [Universal Blue's image template](https://github.com/ublue-os/image-template)

# Install

First, install the "Enthusiasts edition" of [Project Bluefin](https://projectbluefin.io/).

Next, switch to the Overfin image:

    sudo bootc switch ghcr.io/mchlumsky/overfin:latest

Finally reboot and that's it!

# Extra packages

- Virt-manager and friends:
  - qemu
  - libvirt
  - edk2-ovmf
  - gnome-boxes
  - libvirt-daemon-config-network
  - libvirt-daemon-kvm
  - qemu-kvm
  - virt-install
  - virt-manager
  - virt-top
  - virt-viewer

- Docker CE stable:
  - docker-ce
  - docker-ce-cli
  - containerd.io
  - docker-buildx-plugin
  - docker-compose-plugin

- [1password](https://1password.com/)

- [Brave browser](https://brave.com/)

- Other packages:
- ghostty
- ripgrep
- neovim
- headsetcontrol
- golang
- gdu
- btop
- gnome-shell-extension-no-overview
- shotwell
- pcp

- Some tools I maintain:
  - [mracek](https://github.com/mchlumsky/mracek)
  - [kongvisor](https://github.com/mchlumsky/kongvisor)
