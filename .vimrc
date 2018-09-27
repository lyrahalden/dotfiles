
" set leader key to ,
let mapleader = ","

" set $MYVIMRC
let $MYVIMRC="~/.vimrc"

" config for Vundle install
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

" install diffconflicts
"Plugin 'whiteinge/diffconflicts' didn't work

" Install vim-tmux navigator
Plugin 'christoomey/vim-tmux-navigator'

" Install commentary
Plugin 'tpope/vim-commentary'

" Install ctrl+p
Plugin 'ctrlpvim/ctrlp.vim'

" Scala plugins
Plugin 'derekwyatt/vim-sbt'
Plugin 'derekwyatt/vim-scala'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Let ctrlp have up to 10 results.
let g:ctrlp_max_height = 10

" new splits open below and to the right
set splitbelow
set splitright

"open vimrc from any vim buffer
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"see leader key appear at bottom
set showcmd

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {c-h} :TmuxNavigateLeft<cr>
nnoremap <silent> {c-j} :TmuxNavigateDown<cr>
nnoremap <silent> {c-k} :TmuxNavigateUp<cr>
nnoremap <silent> {c-l} :TmuxNavigateRight<cr>
nnoremap <silent> {c-/} :TmuxNavigatePrevious<cr>

" turn off swap files and backups
set noswapfile
set nobackup 
set nowritebackup 

" disable arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" turn on wildmenu and wildmode for tab completion
set wildmenu
set wildmode=longest:full,full

" make vim copy/paste commands work with mac clipboard
set clipboard=unnamed

" display line numbers
set number

" highlighting of search results
set hlsearch

" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting
