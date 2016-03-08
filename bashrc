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
alias gco="git checkout"
alias rcc="rails console -e cenet_development -b 0.0.0.0"
alias rsc="rails server -e cenet_development -b 0.0.0.0"
alias rsdc="rails server -e development-cache -b 0.0.0.0"
alias rsd="rails server -e development -b 0.0.0.0"
alias rdbmc="RAILS_ENV=cenet_development rake db:migrate"
alias rdbm="RAILS_ENV=development rake db:migrate"
alias ll="ls -la"
alias sin="rsync -a --delete /vagrant ~"
alias sout="rsync -a --delete ~/vagrant /"
alias rc="rails console"
alias r="rails"

force_color_prompt=yes
