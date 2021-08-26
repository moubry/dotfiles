# Brewfile
# A list of the developer machine's dependencies from Homebrew
# https://github.com/Homebrew/homebrew-bundle
#
# Usage:
#
#    $ brew bundle
#
# IMPORTANT: Remember to scroll back through the installation
# log so you can read all the caveats. Otherwise, you might
# forget to do things like set up the LaunchAgents.
#
# Installs mas-cli (https://github.com/mas-cli/mas) which Brew Bundle will use
# to install dependencies from the Mac App Store.

cask_args appdir: '/Applications'

# Install Mac App Store, then Xcode first, because it is a
# dependency for certain packages like SwiftLint.
brew 'mas'
mas 'Xcode', id: 497799835

brew 'awscli'
brew 'carthage'
brew 'cloc'
brew 'cmake'
brew 'fasd'
brew 'ffmpeg'
brew 'forego'
brew 'gh'
brew 'git'
brew 'go'
brew 'graphviz'
brew 'hugo'
brew 'icu4c'
brew 'jsonlint'
brew 'ncdu'
brew 'nmap'
brew 'openssl'
brew 'postgresql'
brew 'pyenv-virtualenv'
brew 'pyenv-virtualenvwrapper'
brew 'pyenv'
brew 'rbenv'
brew 'readline'
brew 'redis'
brew 'ruby-build'
brew 'ssh-copy-id'
brew 'svn' # Dependency of homebrew-cask-fonts
brew 'swiftlint'
brew 'terminal-notifier'
brew 'tmux'
brew 'tree'
brew 'wget'
brew 'yamllint'
brew 'zsh-completions'

# Mac App Store

mas '1Password 7', id: 1333542190
mas 'Apple Remote Desktop', id: 409907375
mas 'Cascadea', id: 1432182561
mas 'Kaleidoscope', id: 587512244
mas 'Keynote', id: 409183694
mas 'Neptunes', id: 1006739057
mas 'Numbers', id: 409203825
mas 'Pages', id: 409201541
mas 'Quip', id: 1003160018
mas 'Sim Daltonism', id: 693112260
mas 'Slack', id: 803453959
mas 'Taurine', id: 960276676
mas 'Trello', id: 1278508951
mas 'Tweetbot 3', id: 1384080005
mas 'Twitterrific', id: 1289378661

# Homebrew Cask
# http://caskroom.io
#
# Read https://github.com/Homebrew/homebrew-cask/issues/58046 if you ever see:
# Error: Cask 'wireshark' definition is invalid: invalid 'depends_on macos' value: ">= :mountain_lion"

cask 'aerial'
cask 'alfred'
cask 'bbedit'
cask 'cheatsheet'
cask 'chromedriver'
cask 'coderunner'
cask 'dropbox'
cask 'github'
cask 'google-chrome'
cask 'moom'
cask 'paw'
cask 'sketch'
cask 'tableplus'
cask 'textexpander'
cask 'textmate'
cask 'toggl-track'
cask 'visual-studio-code'
cask 'vmware-fusion'
cask 'wireshark'
cask 'xscope'

# Font Casks
# https://github.com/caskroom/homebrew-fonts

tap 'homebrew/cask-fonts'

cask 'font-new-york'
cask 'font-open-sans'
cask 'font-roboto'
cask 'font-sf-compact'
cask 'font-sf-mono'
cask 'font-sf-pro'
cask 'font-source-code-pro'
