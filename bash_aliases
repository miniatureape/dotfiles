alias nb="vim ~/Dropbox/notes.txt"
alias projects="cd ~/projects"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias red="redshift -l geoclue &"
alias lead="~/projects/lead/env/bin/python ~/projects/lead/lead.py"
alias browser='google-chrome'

# Find out what someone's been up to
sup () {
    git log -p --author ${1-`whoami`} --since ${2-1weeks}
}

# Say something via irccat: room, msg
catsay () {
    echo "$1 \"$2\"" | nc irccat.etsycorp.com 12345
}

# Find alias file specific for this host by looking for and sourcing .$HOSTNAME.bash_aliases
HOSTBASH="."`hostname`".bash_aliases";
if [ -f $HOSTBASH ];
    then 
       source $HOSTBASH
fi
