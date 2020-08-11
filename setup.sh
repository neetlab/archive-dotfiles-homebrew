# Install all dependencies from Brewfile
brew bundle insatll
# Auto update all brew dependencies for each hour
brew autoupdate --start

# Use Fish as the default shell
sudo sh -c "echo $(which fish) > /etc/shells"
chsh -s $(which fish)
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

# Run .macos
source ./.macos
