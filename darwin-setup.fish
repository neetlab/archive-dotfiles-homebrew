function enableKeyRepeating -d 'Darwin: Enables key repeating'
  defaults write co.zeit.hyper ApplePressAndHoldEnabled -bool false
  defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
  defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
end
