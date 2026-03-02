# Directory listing
alias ll='ls -halF'
alias la='ls -A'
alias l='ls -CF'

# Test network
alias tnet='wget --spider http://www.google.com'

# Apt updates
alias aptupdate='sudo apt update && apt list --upgradable'

# Test environment VPN
alias vpn-up='wg-quick up /home/smagrassi/.config/vpn/wg-tot-test.conf'
alias vpn-down='wg-quick down /home/smagrassi/.config/vpn/wg-tot-test.conf'

# Browserstack
alias bs='browserstack-local --key Ls5yVtwxs1fAjkjPktXy'

