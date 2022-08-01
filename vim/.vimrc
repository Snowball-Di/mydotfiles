let $VIMRUNTIME = "/usr/local/share/vim/vim90"

"--------------------------------
"key bindings
"--------------------------------
" define leader
let mapleader=";"

" file type detect & automatically load plugin
filetype on
filetype plugin on

" map
" line beginning and end
nmap LB 0
nmap LE $
" copy and paste content from(to) system clipboard 
vnoremap <Leader>y "+y
nmap <Leader>p "+p
" file save and quit
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>Q :qa!<CR>
" vim windows
nnoremap nw <C-W><C-W>
" right window
nnoremap <Leader>lw <C-W>l
" left window
nnoremap <Leader>hw <C-W>h
" above window
nnoremap <Leader>kw <C-W>k
" down window
nnoremap <Leader>jw <C-W>j
" jump to sign pair
nmap <Leader>M %
" configure go into effect at once
autocmd BufwritePost $MYVIMRC source $MYVIMRC

"------------------------------------
"plugins
"------------------------------------
" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'chriskempson/base16-vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

"-----------------------------------
"color and fonts
"------------------------------------
syntax on
set encoding=utf-8
let base16colorspace=256
colorscheme base16-github
set cursorline

"-----------------------------------
"general configuration
"-----------------------------------
set autoread 
set cmdheight=2

set hlsearch "highlight search matches
set incsearch "search while entering characters

set ignorecase
set number "line numbers
set showcmd
set ruler "always show current position

set showmatch

"-----------------------------------
"text and indent
"-----------------------------------
set smarttab
set backspace=indent,eol,start
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4


