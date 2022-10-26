#!/usr/bin/env zsh
# This function is used when you need to know the error location in the running code
set -e

if ! ping -c 3 www.google.fr
then
    echo "An internet connexion is required to launch this script."
    exit 1
fi

echo
echo "✅  Laptop is connected to internet."
echo
echo "1️⃣  Install Ansible and his dependencies."
echo

# Install Xcode Command-Line Tools
if ! xcode-select -p ; then
	xcode-select --install
    echo
    echo "⚠️ Relaunch the script when xcode installation is complete."
	exit 0
fi
echo
echo "✅  1/5 Xcode CLI tools is ready."
echo

# Install & update Homebrew
brew --version || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor || exit $?
brew update
echo
echo "✅  2/5 Homebrew is ready."
echo

# Install python
python3 --version || brew install python
echo
echo "✅	 3/5 Python is ready."
echo

# Install Ansible
ansible --version || brew install ansible
echo
echo "✅  4/5 Ansible is ready."
echo

# Clone the repo
git clone https://github.com/Synodra/ansible-osx-setup.git

if ! (git clone https://github.com/Synodra/ansible-osx-setup.git) then
    echo
    echo "⚠️ Git clone aborted! Repo may have already been cloned."
fi
echo
echo "✅  5/5 Git repo has been cloned."

echo
echo "2️⃣  You can now configure config file & launch the ansible script."
