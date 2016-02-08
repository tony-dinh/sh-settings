set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

" Plugins ============================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'git@github.com:altercation/vim-colors-solarized.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'git@github.com:tpope/vim-surround.git'
Plugin 'git@github.com:ctrlpvim/ctrlp.vim.git'
Plugin 'git@github.com:rking/ag.vim.git'
Plugin 'git@github.com:Raimondi/delimitMate.git'
Plugin 'git@github.com:Valloric/YouCompleteMe.git'
Plugin 'marijnh/tern_for_vim'
Plugin 'itchyny/lightline.vim'
Plugin 'git@github.com:tomtom/tcomment_vim.git'

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
set background=light
set cursorline      " Highlights current line
set number          " Display line number
set showcmd         " Display commands on bottom-right corner
set showmatch       " Highlights matching parenthesis-like characters
set wildmenu
set backspace=indent,eol,start

" Search =============================================================
set incsearch       " Incremental search -- search as you type
set hlsearch        " Highlight search matches

" Spaces/Tabs ========================================================
set tabstop=4
set shiftwidth=4
set expandtab
" Commenting =========================================================
map <Leader>c :TComment<CR>
map <Leader>b :TCommentBlock<CR>
map <Leader>// :TCommentInline<CR>

" CtrlP Configuration ================================================
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_switch_buffer = 0 
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_regexp = 1
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'
map <Leader>t :CtrlP<CR>

" Light-Line Configuration ===========================================
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'readonly': 'LightLineReadonly',
      \   'modified': 'LightLineModified',
      \   'filename': 'LightLineFilename'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

function! LightLineModified()
    if &filetype == "help"
        return ""
     elseif &modified
        return "+"
     elseif &modifiable
        return ""
     else
        return ""
     endif
endfunction

function! LightLineReadonly()
    if &filetype == "help"
        return ""
    elseif &readonly
        return "⭤"
    else
        return ""
    endif
endfunction

function! LightLineFugitive()
    return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! LightLineFilename()
    return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
         \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
         \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFugitive()
    if exists("*fugitive#head")
        let _ = fugitive#head()
        return strlen(_) ? '⭠ '._ : ''
    endif
        return ''
endfunction

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

" You Complete Me Configuration ======================================
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
