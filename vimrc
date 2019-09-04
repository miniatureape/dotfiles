syntax on
let mapleader=","
set number
set ruler
set expandtab
set shiftwidth=4
set tabstop=4
set showmatch
set ignorecase
set smartcase
set grepprg=ack
set nowrap
" This helps shouw options in command mode
set wildmenu
" This keeps my cursor centered in the screen
set so=999
" Colors and mouse
set termguicolors
set term=screen-256color
set mouse=a
" Show trailing whitespace
set list
set listchars=tab:▸\ ,trail:▫
set clipboard=unnamed

" Check mark
inoremap <Leader>c ✓

colorscheme spacegray

" Keymaps
" -------

" escape (this is not great, but its too late to change now)
inoremap jj <Esc>

" stay in visual mode after tabbing
vnoremap < <gv
vnoremap > >gv

" Handle Vundle and vundle managed plugins
source ~/.vim/vundlerc

" add location specific rules. This lets me keep a base
" vimrc and load specific rules for my work machine etc.
" There are better options for this, but it wfm.
let hostrc=$HOME . '/.' . hostname() . ".vimrc"
if filereadable(hostrc)
    exec 'source' hostrc
    endif


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
set hidden

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
slug 'vim-scripts/Align'
Plug 'scrooloose/nerdtree'
Plug 'joonty/vdebug'
Plug 'SirVer/ultisnips'
" Plug 'tobyS/pdv'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'
Plug 'tpope/vim-rhubarb'
Plug 'ajh17/Spacegray.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'farmergreg/vim-lastplace'
Plug 'file:///Users/jdonato/projects/quickpr'
Plug 'andymass/vim-matchup'
Plug 'prettier/vim-prettier'
call plug#end()

function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"
  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")
