# Directory listing
alias ll='ls -halF'
alias la='ls -A'
alias l='ls -CF'

# Test network
alias tnet='wget --spider http://www.google.com'

# Starters - Need `nohup` bin
if command_exists nohup ; then
  alias startff='nohup firefox-dev > $HOME/nohup.out &'
  alias startmeld='nohup meld > $HOME/nohup.out &'
  alias startchrome='nohup google-chrome-stable > $HOME/nohup.out &'
  alias startpm='nohup postman > $HOME/nohup.out &'
fi

# Directories shortcuts
alias gh='cd ~/dev/gh'
alias azd='cd ~/dev/azd'
alias local='cd ~/dev/local'
