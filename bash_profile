export TERM=xterm-256color

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f ~/.`hostname`.bashrc ]; then
   source ~/.`hostname`.bashrc
fi

if [ -f ~/.`hostname`.bash_aliases ]; then
   source ~/.`hostname`.bash_aliases
fi

PATH=$PATH:~/bin
function symlinkhere {
    FILES=($@)
    for f in ${FILES[@]};
    do 
        ln -s $f `basename $f`;
    done
}

