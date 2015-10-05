# Things you need to install

## Everyone

### Create a Github account

Github is the primary site that software developers throughout the world use to store their code, and share it with other developers. Visit the [sign up page](https://github.com/join) and create your own, free account.

### Install Slack 

1. We will make sure you get an invitation to the Nashville Software School Slack organization.
1. When you get your invitation email, make sure you download and install the Slack client on your machine.

### Create Treehouse account

Visit [treehouse](https://teamtreehouse.com/) and create an account with the Basic Plan, which is $25 per month.

### Create Codepen account

Visit the [Codepen sign up page](https://codepen.io/signup), and scroll all the way to the bottom to sign up for a free plan. If you like, you can click the "Use info from Github" button when creating your account.

### Google Chrome

[Google Chrome](https://www.google.com/chrome/browser/desktop/index.html) is the most popular browser for web developers because of the powerful tools it provides to test code, manipulate documents, and measure performance.

### Google Cast extension

Once Chrome is installed, open it and visit the [Chrome Store page](https://chrome.google.com/webstore/detail/google-cast/boadgeojelhgndaghljhdicfkmllpafd) for Google Cast and install it. This will allow you to share your browser screen in the classroom.

### Sublime Text

Visit the [Sublime Text](http://www.sublimetext.com/3) website and click the link that corresponds to your operating system. Then install once the download is complete.

Install the Sublime Text [package control](https://packagecontrol.io/installation) which, in turn, allows you to easily install and manage tons of really cool add-ons for customizing your Sublime editor.

Read [this excellent introduction](https://scotch.io/bar-talk/best-of-sublime-text-3-features-plugins-and-settings) to getting the very most out of Sublime Text. These tips will make coding more enjoyable and increase your speed.

### Vagrant

Visit the [Vagrant download](https://www.vagrantup.com/downloads.html) page and download the installer for your operating system. Once complete, run the installer using all of the default options it provides.

### Virtual Box

Visit the [VirtualBox download](https://www.virtualbox.org/wiki/Downloads) page and download the installer for your operating system. Once complete, run the installer using all of the default options it provides.

## Windows users

###Git powershell 

Visit the [Git powershell](http://www.git-scm.com/downloads) download page click the "Download for Windows" button, and once complete, install the software. Powershell is a command line utility that allows you to run most Unix command inside a Windows environment. This will help you have the same vernacular as the rest of the class, since having a *nix environment is preferred and is how the class is taught.

Git is a program that allows software developers to efficiently manage how their code is versioned, shared, and archived. You will be learning how to use it during class.

###Chocolatey package manager (*optional*)

Windows, like OSX, does not have a built in package manager (a fancy term for a piece of software that lets you easily install other software that you need as a developer). There will be times, many weeks into class, as you gain confidence and skill, that you will want to use a package manager. Therefore, if you feel up to the task - meaning, you were able to install all the required software easily - you may want to install Chocolately.

Here's the [official page](https://chocolatey.org/), but it's instructions are written to an audience of existing software developers and may be confusing for a layperson. Here's the basic instructions.

1. Press your Windows key.
1. Type `cmd` into the search box.
1. You'll see a black box as the first search result named `cmd`.
1. Right click that icon and select the "Run as administrator" option. This opens up the _**Windows Command Line**_.
1. When that starts, copy the following command with Ctrl+C, and once that's done paste it into the command line by right-clicking anywhere in that window.
  `@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin`

# System setup

> When you read the text "execute the command `something`", enter in the command in your terminal, and always follow the command by pressing the enter key.

## Setting up Vagrant

Vagrant is a tool that lets you run a virtual machine that has much of the software that you'll need for class already installed and configured. Think of it as an operating system _**inside**_ your operating system. It's actually an operating system called Linux, a specific brand called Ubuntu, that will run while your machine's default operating system is running. You can start it up, shut it down, pause it, or delete it entirely without affecting your default operating system.

It's why it's called a *virtual* machine.

### OSX

1. Open your terminal application by hitting the combination of the command key and the space key, and then typing in `terminal` and pressing enter.
1. Execute the command `cd` which is the command to change directory. This is what's called your home directory. You can execute the command `pwd` (print working directory) to see the actual path in on your hard drive to that directory. It should be something like `/Users/username`.
1. Create a new directory inside your home directory by executing the command `mkdir workspace`. This creates the directory `/Users/username/workspace`. This is the directory on your hard drive where we will be writing all of the code your learn during class.
1. Go into that directory by executing the command `cd workspace`.
1. If you have not yet installed Vagrant or VirtualBox, please go and do that now.
1. Execute the following command. Hint, you can copy and paste from here into your terminal so you don't have to manually type all that in.
  `vagrant init vagrant-trusty64 http://www.stevebrownlee.com/content/images/nss-base.box`
1. Once that completes, execute the command `vagrant up`. This will take some time and you'll notice a progress bar in your terminal while it's working.
1. After that machine starts, you can then execute the command `vagrant halt` which will put the virtual machine into suspended animation until you're ready to start using it in class.

### Windows

1. Open the Git powershell program that you installed earlier as an administrator. It will be labeled "Git bash" in your start menu or desktop. To open as administrator, right-click the icon and select "Run as administrator option".
1. Execute the command `cd` which is the command to change directory. This is what's called your home directory. You can execute the command `pwd` (print working directory) to see the actual path in on your hard drive to that directory. It should be something like `/c/Users/Steve`, except instead of `Steve` you will see **your** account username.
1. Create a new directory inside your home directory by executing the command `mkdir workspace`. This creates the directory `/c/Users/Steve/workspace`. This is the directory on your hard drive where we will be writing all of the code your learn during class.
1. Go into that directory by executing the command `cd workspace`.
1. If you have not yet installed Vagrant or VirtualBox, please go and do that now.
1. Execute the following command. Hint, you can copy and paste from here into your terminal so you don't have to manually type all that in.
  `vagrant init vagrant-trusty64 http://www.stevebrownlee.com/content/images/nss-base.box`
1. Once that completes, execute the command `vagrant up`. This will take some time and you'll notice a progress bar in your terminal while it's working.
1. After that machine starts, you can then execute the command `vagrant halt` which will put the virtual machine into suspended animation until you're ready to start using it in class.
