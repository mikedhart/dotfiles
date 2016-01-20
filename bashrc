# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias gpp="git pull && git push"
alias gc="git commit -a"
alias gpull="git pull"
alias gpush="git push"
alias gst="git status"
alias rcc="rails console -e cenet_development"
alias rsc="rails server -e cenet_development"
alias rsdc="rails server -e development-cache"
alias rsd="rails server -e development"
alias rdbmc="RAILS_ENV=cenet_development rake db:migrate"
alias rdbm="RAILS_ENV=development rake db:migrate"
