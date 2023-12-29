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

# Linking Java 17 to make it available to System's Java Wrappers
sudo ln -sfn $HOMEBREW_PREFIX/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-17.jdk
brew link openjdk@17

# Adds brew's bash to list of shells
brew_bash="$(brew --prefix)/bin/bash"
! grep -q "${brew_bash}" /etc/shells && echo "${brew_bash}" | sudo tee -a /etc/shells


# Configuring node with nvm
[ ! -d "${HOME}/.nvm" ] && mkdir "${HOME}/.nvm"

# Install node global packages
. "$(brew --prefix nvm)/nvm.sh"
nvm install 'lts/*'
nvm alias default 'lts/*'
while IFS= read -r module
do
    npm install -g "${module}"
    echo "${module}"
done < "${SCRIPT_DIR}/node_global_modules"
