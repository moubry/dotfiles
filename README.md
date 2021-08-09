# dotfiles

There are many like it, but this one is mine.

## Usage

Install Homebrew:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
    eval "$(/opt/homebrew/bin/brew shellenv)"

This will automatically install Xcode Command Line Tools.

Make sure it’s working:

    brew doctor

From the command-line, clone this project:

    mkdir -p ~/Projects
    git clone https://github.com/moubry/dotfiles.git ~/Projects/dotfiles

Sign into the Mac App Store with your Apple ID, then install system dependencies defined in the [Brewfile](https://github.com/moubry/dotfiles/blob/master/Brewfile) — this is going to take forever:

    cd ~/Projects/dotfiles
    brew bundle

Setup the dotfiles:

    ~/Projects/dotfiles/bootstrap.sh

##### You’re done!

Check out the new apps you have installed:

    find ~/Applications -cmin -120

Try [one of the cool aliases](https://github.com/moubry/dotfiles/blob/master/dotfiles/bash/updaters):

    update

## Configuring macOS

This command will close a bunch of your apps, including Terminal. So do this at the end:

    . ~/Projects/dotfiles/.osx

This file was derrived from [Mathias Bynens’s `.macos` file](https://github.com/mathiasbynens/dotfiles/blob/main/.macos).

Other things to remember that the `.osx` script doesn't handle for you:

* Terminal > Preferences > Profiles > Keyboard > Use Option as Meta key
* Keychain Access > Preferences > Show keychain status in menu bar
* Open DropBox and sign in > Choose folders to sync > Start unchecking everything except:
  * 1Password
  * Temp
  * TextExpander
* Wait until all Dropbox files are downloaded (this'll take about 10 minutes)
* Start configuring all the software that requires licenses, getting the licenses from DropBox
* Setup 1Password
