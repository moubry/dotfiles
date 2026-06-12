#!/usr/bin/env bash

# First, verify assumptions about current state of the system are true. The
# symlinks below use `ln -sfn`, so re-running this script over a prior bootstrap
# is safe. What is NOT safe is bootstrapping a system that already has a real
# ~/bin or ~/.vscode directory (e.g. you installed VS Code before switching to
# these dotfiles), because that content would be shadowed by a symlink. Bail in
# that case so it can be handled manually; tolerate paths that are already our
# own symlinks so re-runs work.

if [ -e ~/bin ] && [ ! -L ~/bin ]; then
  echo "ERROR: ~/bin already exists and is not a symlink, so you’ll need to delete it, then re-run."
  exit 1
fi

if [ -e ~/.vscode ] && [ ! -L ~/.vscode ]; then
  echo "ERROR: ~/.vscode already exists and is not a symlink, so you’ll need to delete it, then re-run."
  exit 1
fi

# Create an empty secrets file
touch ~/Developer/dotfiles/zsh/secrets

# Suppress login message of the day (MOTD) so that Terminal does not say
# things like "Last login: Mon Aug 9 12:54:47 on ttys015" every time you
# open a new window or tab (https://stackoverflow.com/a/20303502).
touch ~/.hushlogin

# Sync preferences and packages for across machines
ln -sfn ~/Library/CloudStorage/Dropbox/Apps/Code ~/.vscode

# Create a symlink from ~/bin to ~/Developer/dotfiles, which puts the dotfiles
# project's various scripts on the PATH so they can be run from anywhere.
ln -sfn ~/Developer/dotfiles ~/bin

# Setup Zsh to use the dotfiles project’s .zshrc file.
# This intentionally overwrites the entire file (instead of appending) because
# everything related to configuring zsh should be inside the dotfiles project.
echo 'source ~/Developer/dotfiles/zshrc' > ~/.zshrc

# Setup Ghostty terminal config
mkdir -p ~/Library/Application\ Support/com.mitchellh.ghostty
ln -sfn ~/Developer/dotfiles/ghostty-config ~/Library/Application\ Support/com.mitchellh.ghostty/config
