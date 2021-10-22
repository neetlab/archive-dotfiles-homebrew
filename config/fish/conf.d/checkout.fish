function git_checkout_fzf
  if not test -d .git
    echo "You're currently not on a git directory"
    exit 1
  end

  set -l preview "echo {} | xargs git log --oneline --color=always"
  set -l active_branch (git branch -a | fzf --preview=$preview | xargs)

  if [ $active_branch ]
    git switch $active_branch
  end

  commandline -f repaint
end

bind \cs git_checkout_fzf
