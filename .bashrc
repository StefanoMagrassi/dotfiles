# ~/.bashrc: executed by bash(1) for non-login shells.
# @see /usr/share/doc/bash/examples/startup-files

## ENV VARS
## --------
if [ -f ~/.envvars ]; then
  . ~/.envvars
fi

## HITS
## ----
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

## SHELL OPTIONS
## -------------
# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

## LESS
## ----
# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

## COLORS
## ------
if [ -f ~/.bash_colors ]; then
  . ~/.bash_colors
fi

## ALIASES
## -------
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

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
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion.d/git-prompt
fi

# Native Script - tns completion
if [ -f ~/.tnsrc ]; then 
  source ~/.tnsrc
fi

## VTE
## ---
. /etc/profile.d/vte.sh
