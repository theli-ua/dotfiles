" Of course
set nocompatible

" Required Vundle setup
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/pyflakes.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'vim-scripts/Vimball'
Bundle 'derekwyatt/vim-fswitch'
Bundle 'bling/vim-airline'


filetype off
syntax on
filetype plugin indent on

" colorscheme desert
set t_Co=256
colorscheme zenburn
" set guifont=ter-c20b:h15
set guifont=Terminus
if has("gui_macvim")
    set guifont=Anonymous\ Pro:h18
endif
set fileencodings=utf-8
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
let mapleader = ","
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap ; :
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <F11> :RainbowParenthesesToggle<cr>
"nnoremap <F12> :NERDTreeToggle<cr>
nnoremap <F12> :NERDTreeTabsToggle<cr>
nnoremap <F10> :call SessionManagerToggle()<cr><cr>

:let g:session_autoload = 'yes'
:let g:session_autosave = 'yes'

nnoremap <silent> <F8> :TlistToggle<CR>

let g:DoxygenToolkit_authorName="Anton Romanov" 
let g:DoxygenToolkit_licenseTag="AS IS"
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf = 0
"let g:ycm_autoclose_preview_window_after_insertion = 0
nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>
if filereadable("/usr/local/bin/python2.7")
	let g:ycm_path_to_python_interpreter = '/usr/local/bin/python2.7'
endif
set errorformat^=%-G%f:%l:\ warning:%m

let g:nerdtree_tabs_open_on_gui_startup = 0
