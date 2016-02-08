set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"***************** PLUGINS HERE *********************
Plugin 'git@github.com:Lokaltog/vim-powerline.git'
Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'git@github.com:altercation/vim-colors-solarized.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'git@github.com:tpope/vim-surround.git'
Plugin 'git@github.com:ctrlpvim/ctrlp.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Power-line configuration
let g:Powerline_symbols = 'fancy'
let g:ctrlp_regexp = 1
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set showcmd     " display commands on bottom right
set number      " display line number

" option name default optional ------------------------------------------------ 
let g:solarized_termcolors= 16 
let g:solarized_termtrans = 0
let g:solarized_degrade = 0
let g:solarized_bold = 1 
let g:solarized_underline = 0 
let g:solarized_italic = 0 
let g:solarized_contrast = "normal" 
let g:solarized_visibility= "normal"
" ------------------------------------------------
set background=light
colorscheme solarized

set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
