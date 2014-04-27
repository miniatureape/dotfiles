syntax on
let mapleader=","
set number
set expandtab
set shiftwidth=4
set tabstop=4
set showmatch 
set ignorecase
set smartcase
set grepprg=ack
set nowrap
set wildmenu
inoremap jj <Esc>

" Handle Vundle and vundle managed plugins
source ~/.vim/vundlerc

" add location specific rules
let hostrc='~/vim-' . $HOSTNAME . ".rc"
if filereadable(hostrc)
    source hostrc
endif
