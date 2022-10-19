#!/usr/bin/env zsh
# This function is used when you need to know the error location in the running code
set -e

if ! ping -c 3 www.google.fr
then
    echo "An internet connexion is required to launch this script."
    exit 1
fi

echo
echo "1️⃣ Install Ansible and his dependencies"
echo

# Install Xcode Command-Line Tools
if ! xcode-select -p ; then
	xcode-select --install
	exit 0
fi
echo
echo "		1/6 Xcode CLI tools is ready ✅"
echo

# Install & update Homebrew
brew --version || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor || exit $?
brew update
echo
echo "		2/6 Homebrew is ready ✅"
echo

# Install git
# echo
# git --version || brew install git
# echo
# echo "		3/5 Git is ready ✅"

# Install python
python3 --version || brew install python
echo
echo "		4/6 Python is ready ✅"
echo

# Install Ansible
ansible --version || brew install ansible
echo
echo "		5/6 Ansible is ready ✅"
echo

# Clone the repo
git clone git@github.com:Synodra/ansible-osx-setup.git
echo
echo "      6/6 Git repo has been cloned ✅"

# echo
# echo "2️⃣ Launch Ansible script"
# echo
# ansible-playbook ansible-osx-setup/playbook.yml --ask-become-pass --ask-vault-pass
# 
# echo
# echo "DONE - macOS is ready 🎉"
# echo