export PATH=~/miniconda/envs/python2/bin:\
~/miniconda/envs/python3/bin:\
~/miniconda/bin:\
~/.jenv/bin:\
$PATH

# Load rbenv
eval "$(rbenv init - zsh)"

# Load jenv
eval "$(jenv init -)"

# Set username to consider a default context, which by default will not be shown.
# https://github.com/bhilburn/powerlevel9k/blob/next/segments/context/README.md
DEFAULT_USER=$USER
