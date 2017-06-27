set nocompatible
filetype off
:set ts=4
:set shiftwidth=4
:set expandtab
:syntax on
:set ai
":set nocompatible
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
:version 7.4
let mapleader = ","
inoremap jj <ESC>
compiler ruby
nmap <silent> ,ev :e $MYVIMRC<CR>

nnoremap ; :

nmap <leader>w :w<CR>

nmap <silent> ,x :w<cr>:!chmod 755 %<cr>:e<cr>

nnoremap <leader>a :Ack

"set nocompatible
"filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Plugin 'gmarik/vundle'
Plugin 'rstacruz/sparkup' , {'rtp' : 'vim/'}
Plugin 'L9'
Plugin 'mileszs/ack.vim'
Plugin 'phildobbin/vim-powerline'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'msanders/snipmate.vim'
"Plugin 'vim-scripts/YankRing.vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-markdown'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'vim-ruby/vim-ruby'
Plugin 'majutsushi/tagbar'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/dbext.vim'
"Plugin 'fmoralesc/vim-pad'
"Plugin 'cwood/vim-django'
Plugin 'jmcantrell/vim-virtualenv'
"Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'vim-scripts/taglist.vim'
"Plugin 'c9s/bufexplorer'
Plugin 'vim-scripts/SudoEdit.vim'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/Python-mode-klen'
Plugin 'klen/rope-vim'
Plugin 'rodjek/vim-puppet'
Plugin 'vim-scripts/TwitVim'
Plugin 'vim-scripts/vim-maximizer'
Plugin 'cometsong/ferm.vim'
Plugin 'vim-scripts/projectroot'
Plugin 'sjl/gundo.vim'
Plugin 'mihaifm/bufstop'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mhinz/vim-startify'
Plugin 'moll/vim-node'
"Plugin "daylerees/colour-schemes", { "rtp": "vim-themes/"  }
"Plugin 'biskark/vim-ultimate-colorscheme-utility'
Plugin 'vim-scripts/nerdtree-execute'
Plugin 'justinmk/vim-sneak'
Plugin 'junegunn/goyo.vim'
Plugin 'mikewest/vimroom'
Plugin 'jayflo/vim-skip'
Plugin 'vim-scripts/Toggle-NERDTree-width'


call vundle#end()
filetype plugin indent on
map <leader>gm :NERDTreeToggle<CR>

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

au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru,*.rdoc,*.textile,*.pp} set ft=ruby
au BufRead,BufNewFile {*.md,*.mkd,*.markdown} set ft=markdown
au BufRead,BufNewFile {COMMIT_EDITMSG} set ft=gitcommit
au BufRead,BufNewFile {*.log,*.log.1,*.profile,*.cfg,*.stats,*.txt} set ft=syslog


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

nmap <silent> <leader>\ :nohlsearch<CR>


nmap <leader>gv :Gitv --all<cr>
nmap <leader>gV :Gitv! --all<cr>

cabbrev git Git

let g:yankring_enabled = 0

let g:virtualenv_directory = '/home/user/ENV'

let g:pydiction_location = '/home/user/.vim/bundle/Pydiction/complete-dict'

set backup

set backupdir=~/.backup

nnoremap ? q?

"let g:hybrid_use_Xresources = 1
"colorscheme hybrid 

nnoremap <leader>eb :e ~/.bashrc<cr>

"Yank content in OS's clipboard
vnoremap <leader>yo "*y
"Paste content from OS's clipboard
nnoremap <leader>po "*p

nnoremap <leader>eg :e ~/.gvimrc<cr>

set title

let twitvim_enable_python = 1

let twitvim_browser_cmd = '/usr/bin/google-chrome'

set incsearch

let g:is_posix = 1

nnoremap <leader>rt :tabnew<cr>

au BufWinEnter *.txt if &ft == 'help' | wincmd H | endif

nnoremap mt :MaximizerToggle<CR>
"vnoremap <silent><F3> :MaximizerToggle<CR>gv
"inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

nnoremap Y y$

inoremap <S-Tab> <C-V><Tab>

nnoremap <leader>dp :ProjectRootCD<cr>

nnoremap <silent> <Leader>dt :ProjectRootExe NERDTreeFind<cr>

nnoremap gu :GundoToggle<CR>

let g:gundo_close_on_revert = 1

map <leader>b :Bufstop<CR>          
map <leader>a :BufstopModeFast<CR> 
map <C-tab>   :BufstopBack<CR>
map <S-tab>   :BufstopForward<CR>
let g:BufstopAutoSpeedToggle = 1 

let g:startify_session_dir = '~/.vim/session'
let g:startify_show_sessions = 1
let g:startify_show_files = 1
let g:startify_show_files_number = 10
let g:startify_bookmarks = [ '~/.vimrc' ]

nnoremap <leader>sf :Startify<cr>


let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=:*********:dbname=mysql:extra=-t'
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=:*********:dbname=mysql:extra=--batch --raw --silent'
let g:dbext_default_profile_mysql_local_DBI = 'type=DBI:user=root:passwd=:*******:driver=mysql:conn_parms=database=mysql;host=localhost'
let g:dbext_default_profile_mysql_local_ODBC = 'type=ODBC:user=root:passwd=:********:dsnname=mysql'

map <leader>r :NERDTree<CR>

"colorscheme Grunge

"colorscheme Poyeyo_Blue

"colorscheme TronLegacy

":set spell spelllang=en_gb

let g:ack_mappings = {
              \  'v':  '<C-W><CR><C-W>L<C-W>p<C-W>J<C-W>p',
              \ 'gv': '<C-W><CR><C-W>L<C-W>p<C-W>J' }


nnoremap <esc><esc> :silent! nohls<cr>



map <Leader>vr :VimroomToggle<CR>
