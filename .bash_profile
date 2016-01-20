# Stupid Mac only
if [ -f /opt/local/etc/bash_completion.d/git-prompt.sh ]; then
  source /opt/local/etc/bash_completion.d/git-prompt.sh
fi

if [ -f /opt/local/etc/bash_completion.d/git-completion.bash ]; then
  source /opt/local/etc/bash_completion.d/git-completion.bash
fi

if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi
