#!/usr/bin/env bash

# First, verify assumptions about current state of the system are true. This
# script should not run on a system that has already been bootstrapped. However,
# if you're switching to these dotfiles after having already installed VS Code,
# then bootstrapping is a destructive action, so handle this manually.

if [ -d ~/bin ]; then
  echo "ERROR: ~/bin already exists, so you’ll need to delete it, then re-run."
  exit 1
fi

if [ -d ~/.vscode ]; then
  echo "ERROR: ~/.vscode already exists, so you’ll need to delete it, then re-run."
  exit 1
fi

# Create an empty secrets file
touch ~/Developer/dotfiles/zsh/secrets

# Suppress login message of the day (MOTD) so that Terminal does not say
# things like "Last login: Mon Aug 9 12:54:47 on ttys015" every time you
# open a new window or tab (https://stackoverflow.com/a/20303502).
touch ~/.hushlogin

# Sync preferences and packages for across machines
ln -s ~/Dropbox/Apps/Code ~/.vscode

# Finally, hook up the .zprofile to our cloned dotfiles
ln -s ~/Developer/dotfiles ~/bin
echo 'source ~/Developer/dotfiles/zshrc' >> ~/.zprofile
