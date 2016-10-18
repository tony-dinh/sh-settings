set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

" Plugins ============================================================
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"call vundle#end()   " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal


" General Vim ========================================================
syntax enable       " Allow color scheme
set background=dark
set cursorline      " Highlights current line
set number          " Display line number
set showcmd         " Display commands on bottom-right corner
set showmatch       " Highlights matching parenthesis-like characters
set wildmenu
set backspace=indent,eol,start
set mouse=a

noremap <Leader>h <Home>
noremap <Leader>l <End>
" NERDTree ===========================================================
map <Leader>t :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$', '\.vim$']

" Search =============================================================
set incsearch       " Incremental search -- search as you type
set hlsearch        " Highlight search matches

" Spaces/Tabs ========================================================
set tabstop=4
set shiftwidth=4
set expandtab

set nocompatible    " Disable vi-compatibility
set laststatus=2    " Always show the statusline
set encoding=utf-8  " Necessary to show Unicode glyphs
set t_Co=256        " Explicitly tell Vim that the terminal supports 256 colors

set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
