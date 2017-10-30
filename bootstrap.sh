#!/usr/bin/env bash

# First, verify assumptions about current state of the system are true. This
# script should not run on a system that has already been bootstrapped. However,
# if you're switching to these dotfiles after having already installed Atom,
# then bootstrapping is a destructive action, so handle this manually.

if [ -d ~/bin ]; then
  echo "ERROR: ~/bin already exists, so you’ll need to delete it, then re-run."
  exit 1
fi

if [ -d ~/.atom ]; then
  echo "ERROR: ~/.atom already exists, so you’ll need to delete it, then re-run."
  exit 1
fi

ln -s ~/Projects/dotfiles ~/bin
echo 'source ~/Projects/dotfiles/dotfiles/bashrc' >> ~/.bash_profile

# Sync preferences and packages for across machines
ln -s ~/Dropbox/Apps/Atom ~/.atom
