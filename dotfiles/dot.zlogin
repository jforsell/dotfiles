# Load rbenv
eval "$(rbenv init - zsh)"

# Load jenv
eval "$(jenv init -)"

# Load pyenv
eval "$(pyenv init -)"

# Unset LESS which is set by oh-my-zsh (see https://superuser.com/questions/820943/typing-git-log-oneline-in-oh-my-zsh-pipes-to-less)
unset LESS
