# Command Line Interface (CLI)

Ensure that any students who are using Windows have the Powershell package installed, since you'll be covering \*nix commands for the following actions.

## Basic commands

1. Learn how to navigate your computer's directory structure `cd`
1. Show where you are `pwd`
1. Create directory `mkdir`
1. View contents of a directory `ls`
1. Wiping the slate clean `clear`
1. Create files `touch`
1. View contents of files `cat`
1. Copying files and directories `cp`
1. Moving files and directories `mv`
1. Deleting files and folders `rm && rm -rf`


> **Instructor Suggestion:**
> All students should have VirtualBox and Vagrant installed on their machines at this point. Walk through `vagrant up` and `vagrant ssh`

## Working with your Vagrant virtual machine

Explain Vagrant and why it's being used to standardize the development environment for NSS students.

1. Make a standard workspace directory `cd && mkdir -p nss/workspace`
1. `cd nss/workspace`
1. `touch test.md`
1. Run this command in the workspace folder `vagrant init vagrant-trusty64 http://stevebrownlee.com/content/images/nss-base.box`
1. Run `vagrant up` and verify that it pulls and starts the VM
1. `vagrant ssh` to get into the machine
1. `cd /vagrant` and verify that `test.md` file is there. Explain that the `/vagrant` directory is a direct mapping to the directory on the host machine where vagrant was initialized.
