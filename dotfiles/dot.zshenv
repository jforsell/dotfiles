# PATH is exported in .zprofile to work around /etc/zprofile sourcing order.

# Set username to consider a default context, which by default will not be shown.
# https://github.com/bhilburn/powerlevel9k/blob/next/segments/context/README.md
DEFAULT_USER=$USER

# Virtualenv in Powerlevel9K prompt -- https://github.com/bhilburn/powerlevel9k#virtualenv
VIRTUAL_ENV_DISABLE_PROMPT=1
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs virtualenv)

# Use Nerd-Fonts
POWERLEVEL9K_MODE='nerdfont-complete'
