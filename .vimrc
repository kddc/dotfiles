filetype off
set nocompatible               " be iMproved
filetype off                   " required!

"execute pathogen#infect()

if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Color scheme
" set t_Co=256
"colorscheme base16-tomorrow
"colorscheme solarized
"let base16colorspace=256  " Access colors present in 256 colorspace

colorscheme monokai

" Display line numbers
set number

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif


" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd    " Show (partial) command in status line.
set showmatch   " Show matching brackets.
set ignorecase  " Do case insensitive matching
set smartcase   " Do smart case matching
set incsearch   " Incremental search
set autowrite   " Automatically save before commands like :next and :make
set mouse=a   " Enable mouse usage (all modes)

set textwidth=120

" show a line if text is getting too long
set colorcolumn=+1 " highlight column after 'textwidth'
" set the color to a dark grey
highlight ColorColumn ctermbg=234

set expandtab     "soft tabs
set tabstop=2     "set tabstops
set shiftwidth=2  "set shiftwidth
set softtabstop=2 "delete this many spaces upon deleting soft tab

" Refresh a file when modified from the outside
set autoread

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

set nobackup
set nowb
set noswapfile

" new lines
nnoremap <C-J> m`o<Esc>``
nnoremap <C-K> m`O<Esc>``

inoremap jj <Esc>
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" show all linebreak chars.
set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" Better line movements
nnoremap j gj
nnoremap k gk

" Trailing whitespaces
highlight WhitespaceEOL ctermbg=Red guibg=Red
match WhitespaceEOL /\s\+$/

set hlsearch

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs

" useful statusline
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set title

filetype indent plugin on
