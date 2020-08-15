# Run linker
# TODO: Use binary
cd ./link && yarn && cd .. && ./link/index.mjs $PWD $HOME

# Back to home
cd $HOME

# Install all dependencies from Brewfile
brew bundle insatll

# Auto update all brew dependencies for each hour
brew autoupdate --start

# Install global Node.js packages
yarn

# Run .macos; set preferences
source ~/.macos

# Set default apps
duti ~/.duti

# Use Fish as the default shell
sudo sh -c "echo $(which fish) > /etc/shells"
chsh -s $(which fish)
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
