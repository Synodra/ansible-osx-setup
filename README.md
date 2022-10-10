# ansible-osx-setup

This repo contains an Ansible script that setup an Intel based macOS Monterey.

## Installation

Follow those inscrutions to launch the script aiming to setup the workstation.

1. Clone the repository to you local drive.
2. Copy your encrypted ssh keys in this folder `/files/ssh`
3. Make the setup.sh executable

    ```Shell
    chmod 755 ./setup.sh
    ```

4. Launch the the script

    ```Shell
    ./setup.sh
    ```

## Encrypt ssh key

The goal of this script is to reconfigure my workstation, this includes having my ssh keys ready to be used. I order to have the less action to do, I've just setup the script to copy/paste my ssh key in the right directory.

As my keys will be stored outside my computer for backup, I wanted to have them securely stored. That's why I will be using the following command to encrypt them.

Ansible script will perform, with a given password, the decription and the movement of the key to the ssh folder.

Each keys need to be encrypt with this command.

```Shell
ansible-vault encrypt ssh-key-name
```

## Testing the Playbook

In order to test this script, you'll need to create a macOS VM and run the script.
You can also use ansible test tool to verify that ansible script is executables.

## See also

- [Je configure macOS avec Ansible !](https://blog.filador.fr/je-configure-macos-avec-ansible/)
- [osx dotfile implementation](https://github.com/geerlingguy/mac-dev-playbook/blob/master/tasks/osx.yml)
- [osx dotfile tuto](https://wilsonmar.github.io/dotfiles/)
