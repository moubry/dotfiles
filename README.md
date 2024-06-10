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

    mkdir -p ~/Developer
    git clone https://github.com/moubry/dotfiles.git ~/Developer/dotfiles

Sign into the Mac App Store with your Apple ID, then install system dependencies defined in the [Brewfile](https://github.com/moubry/dotfiles/blob/master/Brewfile) — this is going to take forever:

    cd ~/Developer/dotfiles
    brew bundle

Setup the dotfiles:

    ~/Developer/dotfiles/bootstrap.sh

##### You’re done!

Check out the new apps you have installed:

    find ~/Applications -cmin -120

Try [one of the cool aliases](https://github.com/moubry/dotfiles/blob/master/dotfiles/bash/updaters):

    update

## Configuring macOS

This command will close a bunch of your apps, including Terminal. So do this at the end:

    . ~/Developer/dotfiles/.macos

This file was derrived from [Mathias Bynens’s `.macos` file](https://github.com/mathiasbynens/dotfiles/blob/main/.macos).

Other things to remember that the `.osx` script doesn’t handle for you:

* Terminal > Preferences > Profiles > Keyboard > Use Option as Meta key.

## Setup Apps

* [Download and install Dropbox from their website](https://www.dropbox.com/desktop) instead of Homebrew because it’s a mess to setup these days with [kernel extensions](https://developer.apple.com/library/content/technotes/tn2459/_index.html) and/or File Provider. Once you’re signed in: Preferences > Sync Choose folders to selective sync > Only the essential folders (Apps and References). Wait until all Dropbox files are downloaded (this’ll take forever).

* Log into 1Password to get software licenses.

* GitHub Desktop > Install Command Line Tool

* Install NVM by [running their install script](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating). To avoid changes to `.zshrc`, either revert them after installation or run the script with `PROFILE=/dev/null`.
