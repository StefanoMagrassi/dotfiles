alias ll='ls -halF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Composer
#alias composer='/usr/local/bin/composer/composer.phar'

# Test network
alias tnet='wget --spider http://www.google.com'

# Starters - Need `nohup` bin
NOHUPOUT="${HOME}/nohup.out"

alias startff='nohup firefox-dev > $NOHUOUT &'
alias startmeld='nohup meld > $NOHUPOUT &'
alias startchrome='nohup google-chrome-stable > $NOHUPOUT &'
alias startpm='nohup postman > $NOHUPOUT &'

