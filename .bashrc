# ~/.bashrc: executed by bash(1) for non-login shells.
# @see /usr/share/doc/bash/examples/startup-files

## UTILS
## -----
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

## ENV VARS
## --------
# Environment variables first of all.
if [ -f "$HOME/.envvars" ]; then
  . "$HOME/.envvars"
fi

## HITS
## ----
# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

## SHELL OPTIONS
## -------------
# Append to the history file, don't overwrite it
if [ "$(shopt -p | grep histappend)" ]; then
  shopt -s histappend
fi

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
if [ "$(shopt -p | grep checkwinsize)" ]; then
  shopt -s checkwinsize
fi

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
if [ "$(shopt -p | grep globstar)" ]; then
  shopt -s globstar
fi

## LESS
## ----
# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

## COMPLETION
## ----------
#  Enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Git completion
if [ -f /etc/bash_completion.d/git-prompt ]; then
  . /etc/bash_completion.d/git-prompt
fi

if [ -f /etc/bash_completion.d/git-completion ]; then
  . /etc/bash_completion.d/git-completion
fi

## COLORS
## ------
if [ -f "$HOME/.bash_colors" ]; then
  . "$HOME/.bash_colors"
fi

## ALIASES
## -------
if [ -f "$HOME/.bash_aliases" ]; then
  . "$HOME/.bash_aliases"
fi

## VTE
## ---
if [ -f /etc/profile.d/vte.sh ]; then
  . /etc/profile.d/vte.sh
fi

## STARTUP
## -------
if [ -f "$HOME/.bash_startup" ]; then
  . "$HOME/.bash_startup"
fi

## NODENV
## ------
if command_exists nodenv ; then
  export PATH=$HOME/.nodenv/bin:$PATH

  eval "$(nodenv init -)"
fi

