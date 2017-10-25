#soruce .bashrc if it exist
if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

#pointer format
export PS1="kz:\w $ "

#safety aliases
alias rm='/bin/rm –i $1'
alias cp='cp -i'
alias mv='mv -i'


#general shortcuts
alias br='source ~/.bash_profile'
alias sl='sublime'
alias d='docker'
alias ls='ls -G'
alias ll='ls -laG'
alias g='grep --color'
alias h='history'
alias gr='grep -ir'
alias eb='sl ~/.bash_profile'
alias psg='ps aux | grep '
alias tf='tail -f'

function cd {  # cd is always followed by and ls
    builtin cd "$@" && ls -G
}

#git
alias gs='git status'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"  #pretty log
alias gb='git branch'
alias gco='git checkout'
alias gdh='git diff HEAD^ HEAD'   #show diff of the last/latest commit
alias gd='git diff'
alias gsl='git stash list'


#docker shortcuts
alias d='docker'
alias dc='docker-compose'
alias dstopall='docker stop $(docker ps -q)'
alias dsa=dstopall
alias dps='docker ps'
alias dpss='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}\t{{.Ports}}"'
alias ds='docker stop'

function dgo { # "dgo [container id/name]" ... get into container's shell
    docker exec -it $@ bash
}


#php/laravel shortcuts
alias paroutes='php artisan route:list'

function paserve   {  # "paserve 8080" ... start a laravel server on localhost:8080
  php artisan serve --port=$@
}

function pserve   {  # "pserve 8080" ... starts a php server on localhost:8080
  php -S localhost:$@
}

# quick cd
alias cdd='cd ~/Desktop'
alias cddll='cd ~/Downloads'
alias cdr='cd ~/Desktop/repos'

# quick ssh
alias sshserver1='ssh developer@server'
