# Command Line Interface (CLI)

Ensure that any students who are using Windows have the Powershell package installed, since you'll be covering \*nix commands for the following actions.

## Prerequisite Homework

1. *Treehouse* > *Console Foundations* > *Getting Started with the Console*: Finish all 12 sections.

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
> Have students create a `workspace` directory in their home directory. Then create a child directory named `nss`. Create a file named `THEIR_NAME.md`. Copy that file to `THEIR_NAME-COPY.md`. Create another directory under `nss` named `destroy` (i.e. `/workspace/nss/destroy`), then create another file with a name of their choosing in that one. Go back up one directory and delete the `destroy` directory.

## Helpful commands to install

### tree

### OSX

1. [Install homebrew](http://brew.sh/)
2. Type `brew install tree` and wait for installation to complete
3. Type `tree`

### Linux

1. Type `sudo apt-get install tree`
2. Type `tree`

## Advanced commands & options

1. Perform actions that affect the entire machine with `sudo`
1. Quickly edit files with vim `vi filename`
1. Use `mkdir -p` to automatically make every directory in a new path
1. Use wildcards when moving or copying files, e.g. `cp *.js ./`
1. Use the `-r` option with `mv` or `cp` to recursively perform the action on all sub-directories
1. Use double bang `!!` to repeat last command, or prefix it with `sudo`, for example.
1. Aliases in .bashrc `mkcd() { [ -n "$1" ] && mkdir -p "$@" && cd $_; }`


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

---

# Want to learn more?

Use the `man` command to learn more about the other commands below. For example, `man touch` tells you everything you need to know about the `touch` command. Just press `q` when you're done reading the content.

1. **List all processes on your machine**. Learn about the `ps` command to find processes on your machine. For advanced usage, combine it with grep to find a specific process.
1. **View processes, live, with stats**. Try the `top` command to monitor running processes in real time.
1. **curl your way on the Web**. You can "surf the web" on the command line using `curl`. Read the docs and see what happens when you use `curl` instead of a web browser.
1. **Find the process using a port**. There's a way to see which port every process that's running is listening on (if applicable). It's `lsof -i`. To find the process listening on a specific port, you add a second argument that is the port number - `lsof -i :8080`.
1. **Securely connect to remote machines**. The `ssh` command allows you to use the CLI of another computer - whether it's a virtual machine running on your personal computer, or a server running in one of Amazon's server farms. You can try it by connecting to your Vagrant machine with `ssh vagrant@192.168.33.10`.

---

# Challenge \#1

Install and configure [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) shell for your Vagrant and/or OSX terminal.

## Useful plugins

 * [Bower](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#bower)
 * [Autojump](https://github.com/joelthelion/autojump)
 * [common-aliases](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#common-aliases)
 * [git](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#git)
 * [sublime](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#sublime)

# Challenge \#2

There's a plugin called [autojump](https://github.com/joelthelion/autojump) that allows you to easily switch between directories on your machine. Get it correctly installed, and if you've completed Challenge 1, enable the plugin in zsh.



# Challenge \#3

There is another account on the Vagrant machine named `student`. The password is `nss`. Go ahead and `ssh` to the machine using those credentials. Your challenge is to find out how to can `ssh` into the box on that account without needing to enter in a password.
