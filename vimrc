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
set so=999
set term=screen-256color


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

colorscheme darkblue
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

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

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
