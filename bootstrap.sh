#!/usr/bin/env bash

# Creation of symlink will fail if ~/bin already exists.
# So you'll need to do a `rm -rf ~/bin`

ln -s ~/Projects/dotfiles ~/bin
echo 'source ~/Projects/dotfiles/dotfiles/bashrc' >> ~/.bash_profile

# Sync preferences and packages for across machines
ln -s ~/Dropbox/Apps/Atom ~/.atom
