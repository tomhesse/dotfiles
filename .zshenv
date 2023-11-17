# XDG base directories
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_STATE_HOME="$HOME"/.local/state

# Config files
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc 
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh

# Cache files
export PYTHONPYCACHEPREFEIX="$XDG_CACHE_HOME"/python

# Data files
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PYTHONUSERBASE="$XDG_DATA_HOME"/python

# State files
export HISTFILE="$XDG_STATE_HOME"/zsh_history

# Runtime files
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

# Locale
export LC_COLLATE=C

# Settings
export EDITOR="nvim -e"
export VISUAL=nvim
