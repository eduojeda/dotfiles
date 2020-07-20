export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export CLICOLOR=1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
    . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;32m\]\h \[\033[01;35m\]\w\[\033[01;33m\]$(__git_ps1 " (%s)") \$ \[\033[00m\]'

export TERM=xterm-color

export PATH='/usr/local/bin:'$PATH

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"


alias ll='ls -lah'
alias vup='vagrant up --no-provision'
alias vssh='vagrant ssh'
#alias pull='git fetch && git merge --ff-only origin/master'


export HISTSIZE=1000000
export HISTTIMEFORMAT="%d/%m/%y %T "
shopt -s histappend
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
export JAVA_HOME=$(/usr/libexec/java_home)

complete -W "$(cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g -e 's/_rsa$//' | uniq | grep -v '\[')" ssh

export VISUAL=vim
export EDITOR="$VISUAL"
