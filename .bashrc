
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -aG'

#PS1="[\u@\h${NC} \W]\$ "

mkcd() {
    mkdir -p $1
    cd $1
}


alias ..='cd ..'
alias ..2='cd ..; cd ..;'

complete -F _todo t
alias la='ls -lahF'
#alias ls='ls -lahF'

function sprunge()
{
    $@ | curl -F 'sprunge=<-' http://sprunge.us;
}

function cl()
{
    cd "$@" && la;
}

function so()
{
    source ~/.bashrc;
}

set -o vi
source ~/todo_completion
#source ~/.git-prompt.sh
PATH=$PATH:$HOME/.rvm/bin:/usr/local/sbin # Add RVM to PATH for scripting
#PS1='\W$(__git_ps1 " (%s)")\$ '

alias "E"="exit"
alias "grep"="egrep"

export DISPLAY=:0

#function homeDisplay() {
#    xrandr --output LVDS1 --auto
#    xrandr --output VGA1 --auto --left-of LVDS1
#}
#
#function workDisplay() {
#    xrandr --output LVDS1 --auto
#    xrandr --output VGA1 --auto --right-of LVDS1
#}
#
#msp430_assembly()
#{
#    git clone ~/msp430-assembly-project/ ./$1
#}

alias "ECE382"="cd ~/courses/site/ECE382"
alias "syncECE382"="rsync -r ~/courses root@oceanWeddingHost:"
alias "build"="blah=$(pwd); cd /Users/Silva/github/course-build/; node build.js /Users/Silva/github/web/ /Users/Silva/github/web/template.ejs Hippo!; cd $blah"
alias "buildweb"="cd ~/github/course-build/; node build.js /Users/Silva/github/web/ /Users/Silva/github/web/template.ejs Hippo!"
export HISTCONTROL=ignorespace
