if [[ $SHELL != *"zsh"* ]]; then
  sudo sh -c "echo $(which zsh) > /etc/shells"
  chsh -s $(which zsh)
fi
