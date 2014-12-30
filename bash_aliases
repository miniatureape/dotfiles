alias nb="vim ~/Dropbox/notes.txt"
alias projects="cd ~/projects"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias red="redshift -l geoclue &"
alias lead="~/projects/lead/env/bin/python ~/projects/lead/lead.py"
alias browser='google-chrome'

# Find alias file specific for this host by looking for and sourcing .$HOSTNAME.bash_aliases
HOSTBASH="."`hostname`".bash_aliases";
if [ -f $HOSTBASH ];
    then 
       source $HOSTBASH
fi
