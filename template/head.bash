#!/usr/bin/env bash

######################################################################
#
# Lipstick on a Pig (lipstick) Installation Script.
#
# 1. Adds lipstick-monitor, lipstick-update, lipstick-enable, and lipstick-disable
#    scripts to ~/.local/bin
# 2. Adds light and dark configuration scripts to ~/.config/lipstick
# 3. Adds systemd unit file to ~/.config/systemd/user
# 4. Enables the systemd service and starts it.
#
# For more information, usage instructions, and app configurations,
# please see: https://codeberg.org/small-tech/lipstick
#
# Like this? Fund us! https://small-tech.org/fund-us
#
# Copyright © 2022-present Aral Balkan, Small Technology Foundation
# Released under AGPL version 3.0.
#
######################################################################

echo "🐷 Installing Lipstick on a Pig…"
echo ""

# Files
files=()

######################################################################
######################################################################

