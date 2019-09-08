# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# ===================================

# Set path
export PATH=$(cat $HOME/.path)

fortune | cowsay -r

# Set VI mode
set -o vi

# 'v' opens Neovim
alias v="nvim"

# Git
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gl="git log"

# Python
alias python="python3"
alias p2="python"
alias p3="python3"

export GOPATH=$HOME/go
export CATALINA_HOME=/usr/local/tomcat9
export CATALINA_HOME=/usr/local/tomcat9
export JAVA_HOME=/usr/java/jdk-12.0.2/bin
