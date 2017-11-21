set nocompatible
filetype off
set ts=4
set shiftwidth=4
set expandtab
syntax on
set ai
":set nocompatible
set vb
set hlsearch
set binary noeol
set backspace=indent,eol,start
filetype plugin indent on
set number
set showmode
set laststatus=2
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set hidden
let loaded_matchparen = 1
map q :q<CR>
set ignorecase
set smartcase
version 8 Included patches: 1-1322
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

Plugin 'mileszs/ack.vim'
"Plugin 'phildobbin/vim-powerline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'majutsushi/tagbar'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'twitvim/twitvim'
Plugin 'vim-scripts/projectroot'
Plugin 'sjl/gundo.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mhinz/vim-startify'
Plugin 'vim-scripts/nerdtree-execute'
Plugin 'junegunn/goyo.vim'
Plugin 'mikewest/vimroom'
Plugin 'vim-scripts/Toggle-NERDTree-width'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-eunuch'
"Plugin 'vim-scripts/YankRing.vim'
Plugin 'mhinz/vim-grepper'
Plugin 'chrisbra/NrrwRgn'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'



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

set splitright


let g:pad_search_backend = "ack"

" bring up menu for tab completion with expansion. Set to =full for just menu
set wildmode=list:longest,list:full

:set splitbelow


let Tlist_Exit_OnlyWindow = 1

let Tlist_Use_Right_Window = 1

nmap <silent> <leader>\ :nohlsearch<CR>


nmap <leader>gv :Gitv --all<cr>
nmap <leader>gV :Gitv! --all<cr>

cabbrev git Git

let g:yankring_enabled = 1


set backup

set backupdir=~/.backup

nnoremap ? q?


nnoremap <leader>eb :e ~/.bashrc<cr>

"Yank content in OS's clipboard
vnoremap <leader>yo "*y
"Paste content from OS's clipboard
nnoremap <leader>po "*p

nnoremap <leader>eg :e ~/.gvimrc<cr>

set title

"let twitvim_enable_perl = 1


let twitvim_browser_cmd = '/home/phil/dev/firefox-bin'

"let twitvim_token_file = "/home/phil/.twitvim.token"


set incsearch

let g:is_posix = 1

nnoremap <leader>rt :tabnew<cr>

au BufWinEnter *.txt if &ft == 'help' | wincmd H | endif

nnoremap mt :MaximizerToggle<CR>
"vnoremap <silent><F3> :MaximizerToggle<CR>gv
"inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

map Y y$

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



map <leader>r :NERDTree<CR>


"set spell spelllang=en_gb

let g:ack_mappings = {
              \  'v':  '<C-W><CR><C-W>L<C-W>p<C-W>J<C-W>p',
              \ 'gv': '<C-W><CR><C-W>L<C-W>p<C-W>J' }


nnoremap <esc><esc> :silent! nohls<cr>



map <Leader>vr :VimroomToggle<CR>

set undodir=~/.vim/undo-dir
set undofile

"CtrlP stuff
let g:ctrlp_open_new_file = 't'  "<c-t>
let g:ctrlp_show_hidden = 1
let g:ctrlp_tabpage_position = 'ac'

let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']


nnoremap <leader>yr :YRShow<CR>


colorscheme monokai

set modelines=5

nnoremap <leader>g :Grepper<cr>

if !exists("g:bracketed_paste_tmux_wrap")
  let g:bracketed_paste_tmux_wrap = 1
endif

let &t_ti .= "\<Esc>[?2004h"
let &t_te .= "\<Esc>[?2004l"

function! XTermPasteBegin(ret)
  set pastetoggle=<f29>
  set paste
  return a:ret
endfunction

execute "set <f28>=\<Esc>[200~"
execute "set <f29>=\<Esc>[201~"
map <expr> <f28> XTermPasteBegin("i")
imap <expr> <f28> XTermPasteBegin("")
vmap <expr> <f28> XTermPasteBegin("c")
cmap <f28> <nop>
cmap <f29> <nop>

"Stop dropping comments on newlines.
au FileType * set fo-=r fo-=o




set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

let g:airline#extensions#tmuxline#enabled = 0


let g:airline_powerline_fonts = 1

:let g:airline_theme='dark'


if !empty(&t_ut)
  " see http://snk.tuxfamily.org/log/vim-256color-bce.html
  let &t_ut=''
endif
