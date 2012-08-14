:set ts=2
:syntax on
:set ai
:set nocompatible
:set vb
:set hlsearch
:set binary noeol
:set backspace=indent,eol,start
:filetype plugin indent on
:set number
:set showmode
set laststatus=2
:set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
:set hidden
let loaded_matchparen = 1
:map q :q<CR>
:set ignorecase
:set smartcase
:version 7.3.429
let mapleader = ","
inoremap jj <ESC>
compiler ruby
nmap <silent> ,ev :e $MYVIMRC<CR>

nmap <leader>w :w<CR>

nmap <silent> ,x :w<cr>:!chmod 755 %<cr>:e<cr>

nnoremap <leader>a :Ack


:filetype off
:set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'rstacruz/sparkup' , {'rtp' : 'vim/'}
Bundle 'L9'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-markdown'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'
Bundle 'vim-ruby/vim-ruby'
Bundle 'majutsushi/tagbar'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/dbext.vim'
Bundle 'fmoralesc/vim-pad'
Bundle 'cwood/vim-django'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'vim-scripts/taglist.vim'
Bundle 'c9s/bufexplorer'




map <F2> :NERDTreeToggle<CR>

set ruler

let g:nerdtree_tabs_open_on_console_startup = 1

let NERDTreeShowHidden=1

autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\  exe "normal g`\"" |
	\  endif

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


syntax on

colorscheme molokai

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

source $VIMRUNTIME/ftplugin/man.vim

au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru,*.rdoc} set ft=ruby
au BufRead,BufNewFile {*.md,*.mkd,*.markdown} set ft=markdown
au BufRead,BufNewFile {COMMIT_EDITMSG} set ft=gitcommit

let g:syntastic_auto_jump=1

:set splitright

let g:pad_dir = "~/notes/"

let g:pad_search_backend = "ack"

" bring up menu for tab completion with expansion. Set to =full for just menu
set wildmode=list:longest,list:full

:set splitbelow

nnoremap <silent> <F8> :TlistToggle<CR>

let Tlist_Exit_OnlyWindow = 1

let Tlist_Use_Right_Window = 1












