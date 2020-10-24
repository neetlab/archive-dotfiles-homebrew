# Go back to home
cd $HOME

# Install all dependencies from Brewfile
brew bundle insatll

# Install global Node.js packages
yarn

# ASDF plugins
asdf plugin add nodejs
asdf plugin add haskell
asdf plugin add rust

# Install ASDF
asdf install

# https://github.com/asdf-vm/asdf-nodejs#install
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

