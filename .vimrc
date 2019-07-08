syntax on
colorscheme molokai

let loaded_matchparen = 1

set fenc=utf-8
set noerrorbells
set vb t_vb=

set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set number
set cursorline
set title
set ruler
set virtualedit=onemore
set autoindent
set showmatch
set clipboard=unnamed,autoselect
set backspace=indent,eol,start
set hlsearch
set ambiwidth=double

set cc=80
augroup LangBy
    autocmd!
    autocmd BufRead, BufNewFile *.vim setfiletype vim
    autocmd BufRead, BufNewFile .vimrc setfiletype vim
    autocmd BufRead, BufNewFile *.py setfiletype python
    autocmd BufRead, BufNewFile *.rb setfiletype ruby
    autocmd BufRead, BufNewFile *.rs setfiletype rust
    autocmd BufRead, BufNewFile *.c setfiletype c
    autocmd BufRead, BufNewFile *.h setfiletype c
    autocmd BufRead, BufNewFile *.cpp setfiletype c
    autocmd BufRead, BufNewFile *.hpp setfiletype c
augroup END

autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent loadview

nmap <C-c> :nohlsearch<CR><Esc>
nmap <C-s> :w<CR><Esc>
nmap sh :vsplit<CR>:terminal ++curwin<CR>
nmap sw <C-w>w
nmap m s
nmap <A-Right> <C-w>>
nmap <A-Left> <C-w><
nmap <A-Up> <C-w>-
nmap <A-Down> <C-w>+
nmap <ESC><ESC> <C-w>w<CR><Es>
tnoremap <silent> <ESC><ESC> <C-\><C-n><C-w>w<CR>
tnoremap <silent> <ESC>q exit<CR>

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
call plug#end()
nmap <C-_> gcc
vmap <C-_> gc
map <C-n> :NERDTreeToggle<CR>
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'netrw': 1,
      \ 'unite': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'mail': 1,
      \ 'rb': 1,
      \ 'hs': 1
      \}

let g:ycm_global_ycm_extra_conf = '$HOME/.vim/ycm.py'
