export SRC_DIR=$(cd "$(dirname "$0")"; pwd)

# .vimrc
mkdir -p ~/.vim

ln -sbf $SRC_DIR/vimrc ~/.vimrc
ln -sbf $SRC_DIR/vundlerc ~/.vim/vundlerc

# .tmux.conf
ln -sbf $SRC_DIR/tmux.conf ~/.tmux.conf

# .bash_aliases
ln -sbf $SRC_DIR/bash_aliases ~/.bash_aliases

# .bash_profile
ln -sbf $SRC_DIR/bash_profile ~/.bash_profile
