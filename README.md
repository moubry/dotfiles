# dotfiles

There are many like it, but this one is mine.

## Usage

Install Homebrew:

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

This will automatically prompt you to install the Xcode Command Line Tools. Install these then go back to Terminal and resume the Homebrew installation.

Make sure it’s working:

    brew doctor

From the command-line, clone this project:

    mkdir -p ~/Projects
    git clone https://github.com/moubry/dotfiles.git ~/Projects/dotfiles

Install system dependencies with Brewdler:

    cd ~/Projects/dotfiles
    brew bundle

Setup the dotfiles:

    ~/Projects/dotfiles/bootstrap.sh

##### You’re done!

Check out the new apps you have installed:

    find ~/Applications -cmin -60

Try [one of the cool aliases](https://github.com/moubry/dotfiles/blob/master/dotfiles/bash/updaters):

    update

## Configuring OS X

This command will close a bunch of your apps, including Terminal. So do this at the end:

    . ~/Projects/dotfiles/.osx

Other things to remember that the `.osx` script doesn't handle for you:

* Terminal > Preferences > Profiles > Keyboard > Use Option as Meta key
* Keychain Access > Preferences > Show keychain status in menu bar
* System Preferences > Trackpad > Check every single box in every section
* If a desktop or server Mac: System Preferences > Energy Saver > Computer sleep > Never
* Open DropBox and sign in > Choose folders to sync > Start unchecking everything except:
  * 1Password
  * Temp
  * TextExpander
* Wait until all Dropbox files are downloaded (this'll take about 10 minutes)
* Open 1Password keychain from DropBox `open ~/Dropbox/1Password/1Password.agilekeychain`
* Start configuring all the software that requires licenses, getting the licenses from DropBox
