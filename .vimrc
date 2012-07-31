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
:version 7.3.315
let mapleader = ","

inoremap jj <ESC>

nmap <silent> ,ev :e $MYVIMRC<CR>

nmap <silent> ,x :w<CR>:!chmod 755 %<CR>:e<CR>

nmap <leader>w :w<CR>

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
Bundle 'fmoralesc/vim-pad'
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
Bundle 'vim-scripts/YankRing.vim'



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

if !exists(':Tabularize')
				finish
endif

let s:save_cpo = &cpo
set cpo&vim

AddTabularPattern! asterix /*/11

AddTabularPipeline! remove_leading_spaces /^ /
	\ map(a:lines, "substitute(v:val, '^ *', '')")

" Restore
let &cpo = s:save_cpo
unlet s:save_cpo

" Gitv
nmap <leader>gv :Gitv --all<CR>
nmap <leader>gV :Gitv! --all<CR>
vmap <leader>gV :Gitv! --all<CR>
cabbrev gitv Gitv

nnoremap <silent> <F9> :TagbarToggle<CR>

let g:syntastic_auto_jump=1

let g:pad_dir = "~/notes"

let g:pad_backend_search = `ack`




