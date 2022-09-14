# Go back to home
cd $HOME

# Install all dependencies from Brewfile
brew bundle insatll

# Install global Node.js packages
yarn

# ASDF plugins
asdf plugin add nodejs
asdf plugin add haskell
asdf plugin add purescript
asdf plugin add golang
asdf plugin add python
asdf plugin add deno

# Node.js setup
# https://github.com/asdf-vm/asdf-nodejs#install
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

# Install ASDF
asdf install
