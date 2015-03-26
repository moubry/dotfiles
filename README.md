# dotfiles

There are many like it, but this one is mine.

### Usage

From the command-line, clone this project:

    mkdir -p ~/Projects
    xcode-select --install
    git clone https://github.com/moubry/dotfiles.git ~/Projects/dotfiles

Install Homebrew:
    
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Make sure it's working:

    brew doctor

Install Brewdler:

    brew tap Homebrew/brewdler

Install system dependencies with Brewdler:

    cd ~/Projects/dotfiles
    brew brewdle

Setup the dotfiles:

    ~/Projects/dotfiles/bootstrap.sh

##### You’re done!

Check out the new apps you have installed:

    find ~/Applications -cmin -60

Try [one of the cool aliases](https://github.com/moubry/dotfiles/blob/master/dotfiles/bash/updaters):

    update

### Other things to remember

* Terminal > Preferences > Profiles > Keyboard > Use Option as Meta key
