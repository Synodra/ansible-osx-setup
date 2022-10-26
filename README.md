# ansible-osx-setup

This repo contains an Ansible script that setup an Intel based macOS Monterey.
Inspiration commes from those repo:

- [Je configure macOS avec Ansible !](https://blog.filador.fr/je-configure-macos-avec-ansible/)
- [osx dotfile implementation](https://github.com/geerlingguy/mac-dev-playbook/blob/master/tasks/osx.yml)
- [osx dotfile tuto](https://wilsonmar.github.io/dotfiles/)

## Installation

Follow those instructions to launch the workstation setup.

- Download script file from github
- Make the script executable: `chmod 755 ./setup.sh`
- Launch it: `./setup.sh`
- Enter in the folder of the cloned repo.
- If needed, update config & inventory files and copy ssh keys.
- Launch the Ansible script `ansible-playbook ansible-osx-setup/playbook.yml --ask-become-pass --ask-vault-pass`

## More information about this repo

What's gona do the pre-flight script

- Verify internet connection
- Install xcode
- Install homebrew
- Install python
- Install ansible
- Clone the repo containing the ansible script

What's gona do the ansible script

- Update the hostname
- Install or create new ssh keys
- Install homebrew packages
- Setup git
- Install & setup iterm
- Install & setup zsh
- Install & setup vin
- Install & setup vscode
- Create my folder architecture

## Encrypt ssh key

The goal of this script is to reconfigure my workstation, this includes having my ssh keys ready to be used. I order to have the less action to do, I've just setup the script to copy/paste my ssh key in the right directory.

As my keys will be stored outside my computer for backup, I wanted to have them securely stored. That's why I will be using the following command to encrypt them.

Ansible script will perform, with a given password, the decription and the movement of the key to the ssh folder.

Each keys need to be encrypt with this command.

```Shell
ansible-vault encrypt ssh-key-name
```

## Testing the Playbook

In order to test this script, you'll need to create a macOS VM and run the script. Follow this tuto to create a MacOS VM: [How to create a Mac OS VM](https://github.com/geerlingguy/macos-virtualbox-vm)
You can also use ansible test tool to verify that ansible script is executables with the `--check` command.
