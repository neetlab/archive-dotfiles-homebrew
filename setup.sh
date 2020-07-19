sudo sh -c "echo $(which fish) > /etc/shells"
chsh -s $(which fish)
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false
defaults delete -g ApplePressAndHoldEnabled 