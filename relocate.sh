export SRC_DIR=$(cd "$(dirname "$0")"; pwd)

# .vimrc
mkdir -p ~/.vim

ln -sf $SRC_DIR/vimrc ~/.vimrc
ln -sf $SRC_DIR/vundlerc ~/.vim/vundlerc

# .tmux.conf
ln -sf $SRC_DIR/tmux.conf ~/.tmux.conf

# .bash_aliases
ln -sf $SRC_DIR/bash_aliases ~/.bash_aliases

# .bash_profile
ln -sf $SRC_DIR/bash_profile ~/.bash_profile
