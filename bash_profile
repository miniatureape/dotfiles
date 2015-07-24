export TERM=xterm-256color

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

PATH=$PATH:~/bin
function symlinkhere {
    FILES=($@)
    for f in ${FILES[@]};
    do 
        ln -s $f `basename $f`;
    done
}
