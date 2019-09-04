alias nb="vim ~/Dropbox/notes.txt"
alias projects="cd ~/projects"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias red="redshift -l geoclue &"
alias lead="~/projects/lead/env/bin/python ~/projects/lead/lead.py"
alias browser='google-chrome'
alias touched="git diff --name-only master" 

# Find out what someone's been up to
sup () {
    git log -p --author ${1-`whoami`} --since ${2-1weeks}
}

alias amend="git commit -a --amend --no-edit"

gs () {
    for branch in $(git for-each-ref --format='%(refname)' refs/heads/); do
        ticket=`echo $branch | sed 's/refs\/heads\///' | grep -o --color=never "[A-Za-z]*-[0-9]*"`
        if [ $ticket ]
        then
            jirainfo=`jira view --field=status,summary $ticket`
            summary=`echo $jirainfo | grep "summary" | sed 's/summary: //'`
            issuestatus=`echo $jirainfo | grep "status" | sed 's/status: //'`
            printf "[%s] %s: %s\n" $ticket $issuestatus $summary
        fi
    done
}
