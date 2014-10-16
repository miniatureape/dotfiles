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


" Keymaps
" -------

" escape
inoremap jj <Esc>

" stay in visual mode after tabbing
vnoremap < <gv
vnoremap > >gv

" Handle Vundle and vundle managed plugins
source ~/.vim/vundlerc

" add location specific rules
let hostrc=$HOME . '/.' . $HOSTNAME . ".vimrc"
if filereadable(hostrc)
    exec 'source' hostrc
    endif
