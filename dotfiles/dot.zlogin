# Load rbenv
eval "$(rbenv init - zsh)"

# Load jenv
eval "$(jenv init -)"

# Load pyenv
eval "$(pyenv init -)"

# Unset LESS which is set by oh-my-zsh (see https://superuser.com/questions/820943/typing-git-log-oneline-in-oh-my-zsh-pipes-to-less)
unset LESS

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
