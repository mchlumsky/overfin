# Overfin

[![Build container image](https://github.com/mchlumsky/overfin/actions/workflows/build.yml/badge.svg)](https://github.com/mchlumsky/overfin/actions/workflows/build.yml)
[![Build disk images](https://github.com/mchlumsky/overfin/actions/workflows/build-disk.yml/badge.svg)](https://github.com/mchlumsky/overfin/actions/workflows/build-disk.yml)
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/overfin)](https://artifacthub.io/packages/search?repo=overfin)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![BuyMeACoffee](https://raw.githubusercontent.com/pachadotdev/buymeacoffee-badges/main/bmc-donate-yellow.svg)](https://www.buymeacoffee.com/martinchlumsky)

Overfin is an immutable Linux distribution based on [Project Bluefin's](https://projectbluefin.io/) bluefin-dx image (stable tag + intel/amd graphics) with some packages that I use on top.
It's built using [Universal Blue's image template](https://github.com/ublue-os/image-template)

# Install

First, install the "Bluefin For Everyone" edition of [Project Bluefin](https://projectbluefin.io/).

Next, switch to the Overfin image:

    sudo bootc switch ghcr.io/mchlumsky/overfin:latest

Finally reboot and that's it!

# Extra packages

- [1password](https://1password.com/)
- [Brave browser](https://brave.com/)
- [ghostty](https://ghostty.org/)
- [headsetcontrol](https://github.com/Sapd/HeadsetControl)

- Some tools I maintain:
  - [mracek](https://github.com/mchlumsky/mracek)
  - [kongvisor](https://github.com/mchlumsky/kongvisor)
