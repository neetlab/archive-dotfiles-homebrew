# Go back to home
cd $HOME

# Install all dependencies from Brewfile
brew bundle install 

# Install global Node.js packages
yarn

# Install asdf via Git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

# ASDF plugins
asdf plugin add nodejs
asdf plugin add haskell
asdf plugin add purescript
asdf plugin add golang
asdf plugin add python
asdf plugin add deno

# Install ASDF
asdf install
