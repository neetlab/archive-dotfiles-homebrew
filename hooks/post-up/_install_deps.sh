# Go back to home
cd $HOME

# Install all dependencies from Brewfile
brew bundle insatll

# Install global Node.js packages
yarn

# ASDF plugins
asdf plugin add nodejs
asdf plugin add haskell
asdf plugin add golang
asdf plugin add php

# Node.js setup
# https://github.com/asdf-vm/asdf-nodejs#install
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

# PHP setup
# https://github.com/asdf-community/asdf-php/issues/61
# https://donatstudios.com/MojaveMissingHeaderFiles
export PKG_CONFIG_PATH="$(brew --prefix icu4c)/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="$(brew --prefix krb5)/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="$(brew --prefix libedit)/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="$(brew --prefix libxml2)/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="$(brew --prefix openssl)/lib/pkgconfig:$PKG_CONFIG_PATH"
export PATH="$(brew --prefix bison)/bin:$PATH"
export CPATH="/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"

# Install ASDF
asdf install
