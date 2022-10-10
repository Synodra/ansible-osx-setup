#!/usr/bin/env zsh
# This function is used when you need to know the error location in the running code
set -e

echo ".dotfile setup for macOS \n"
echo "\n 1 - Verify that Ansible dependencies are available \n"

# Install Xcode Command-Line Tools
if ! xcode-select -p ; then
	xcode-select --install
	exit 0
fi
echo "		1/3 Xcode CLI tools is ready ✅"

# Install & update Homebrew
brew --version || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor || exit $?
brew update
echo "		2/3 Homebrew is ready ✅"

# Install Ansible
ansible --version || brew install ansible
echo "		3/3 Ansible is ready ✅"

echo "\n 2 - Launch Ansible script \n"
ansible-playbook macbook_setup.yml --ask-become-pass --ask-vault-pass

echo "\n DONE - macOS is ready ✅ \n"