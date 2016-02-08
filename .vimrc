set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

" Plugins ============================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'git@github.com:Lokaltog/vim-powerline.git'
Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'git@github.com:altercation/vim-colors-solarized.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'git@github.com:tpope/vim-surround.git'
Plugin 'git@github.com:ctrlpvim/ctrlp.vim.git'

call vundle#end()            " required

"Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal


" Custom <Leader> ====================================================
let mapleader = "\<Space>"

" General Vim ========================================================
syntax enable       " Allow color scheme
set background = light
set number          " Display line number
set showcmd         " Display commands on bottom-right corner
set showmatch       " Highlights matching parenthesis-like characters

" Search =============================================================
set incsearch       " Incremental search -- search as you type
set hlsearch        " Highlight search matches

" Spaces/Tabs ========================================================
set tabstop = 4
set shiftwidth = 4
set expandtab

" CtrlP Configuration ================================================
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Power-Line Configuration ===========================================
let g:Powerline_symbols = 'fancy'
let g:ctrlp_regexp = 1
set nocompatible    " Disable vi-compatibility
set laststatus=2    " Always show the statusline
set encoding=utf-8  " Necessary to show Unicode glyphs
set t_Co=256        " Explicitly tell Vim that the terminal supports 256 colors

let g:solarized_termcolors= 16 
let g:solarized_termtrans = 0
let g:solarized_degrade = 0
let g:solarized_bold = 1 
let g:solarized_underline = 0 
let g:solarized_italic = 0 
let g:solarized_contrast = "normal" 
let g:solarized_visibility= "normal"
colorscheme solarized

set wildignore+=*/tmp/*,*.so,*.swp,*.zip 