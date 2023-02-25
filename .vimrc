set number

" Disable compatibility with vi
set nocompatible

" Indents and tabs
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" FINDING FILES
" Search down into subfolders
" Provides tab completion for file related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" FILE BROWSING
let g:netrw_liststyle=3         " Tree View

" Searching and highlighting
" While searching though a file incrementally highlight matching characters as you type.
" set incsearch

" Use highlighting when doing a search.
" set hlsearch

" VIM PLUGGINS
" --------------------------------------------------------
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

" Fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
" --------------------------------------------------------

" Key Binding
nnoremap <C-p> :GFiles<CR>

let mapleader = "," " map leader to comma
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

" --------------------------------------------------------

" FZF Configuration
" - Popup window (anchored to the top of the screen)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'yoffset': -1.0 } }

" Colour Scheme for vim and devicons config
" Color Scheme
colorscheme gruvbox
set bg=dark
set encoding=UTF-8

" Precautionary: solve issues after re-sourcing my vimrc
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
