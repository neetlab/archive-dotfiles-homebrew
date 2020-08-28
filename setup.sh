# Link
ln -sf ~/dotfiles/* ~/

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

# iTerm2 DynamicProfile
# https://gitlab.com/gnachman/iterm2/-/issues/9107
cp ~/.iterm2/Profiles.json ~/Library/Application\ Support/iTerm2/DynamicProfiles

# Use Fish as the default shell
if [[ $SHELL != *"fish"* ]]; then
  sudo sh -c "echo $(which fish) > /etc/shells"
  chsh -s $(which fish)
  curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fi
