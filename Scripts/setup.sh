#!/bin/zsh

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"

command -V brew > /dev/null 2>&1 || {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

if [ ! -d /usr/local/Frameworks ]; then
    sudo mkdir -p /usr/local/Frameworks
    sudo chown -R "$(whoami)" /usr/local/Frameworks
fi

brew update && brew upgrade
brew bundle --cleanup -v --file="${SCRIPT_DIR}/Brewfile"

# Adds brew's bash to list of shells
brew_bash="$(brew --prefix)/bin/bash"
! grep -q "${brew_bash}" /etc/shells && echo "${brew_bash}" | sudo tee -a /etc/shells
