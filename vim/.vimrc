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
"switch between .h and .cpp
nmap <silent> <Leader>sw :FSHere<CR>
nnoremap <Leader>ilt :TagbarToggle<CR>
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
"configure go into effect at once
autocmd BufwritePost $MYVIMRC source $MYVIMRC

"------------------------------------
"plugins
"------------------------------------
" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'base16-project/base16-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'

call vundle#end()
filetype plugin indent on

"-------------------------------
"nerdtree
"-------------------------------
nmap <Leader>fl :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="right"
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1

"--------------------------------
"YouCompleteMe
"--------------------------------
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_tags_files=1
inoremap <leader>; <C-x><C-o>
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_min_num_of_chars_for_completion=1
"let g:ycm_use_clangd = 0


"---------------------------------
"snips and YoucompleteMe configuration
"---------------------------------
let g:UltiSnipsExpandTrigger="<Leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<Leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<Leader><s-tab>"
let g:UltiSnipsSnippetDirectories=["mysnips"]
"----------------------------------
"tagbar configuration
"----------------------------------
let tagbar_left=1
let tagbar_width=32
let g:tagbar_compact=1
"configure cpp tagbar
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }
"-----------------------------------
"color and fonts
"------------------------------------
syntax on
set encoding=utf-8
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-tomorrow-night-eighties
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

"set vim indent guide
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=4
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
