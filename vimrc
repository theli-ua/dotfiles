" Of course
set nocompatible

" Required Vundle setup
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'tpope/vim-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-scripts/Vimball'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/groovyindent'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'vim-ruby/vim-ruby'
Plugin 'chikamichi/mediawiki.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'lepture/vim-jinja'
"Plugin 'rking/ag.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'yuttie/comfortable-motion.vim'
"Plugin 'vim-syntastic/syntastic'
Plugin 'w0rp/ale'
Plugin 'petRUShka/vim-opencl'

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


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8', 'pylint', 'pyflakes']

let g:session_autosave = 'yes'

nnoremap <silent> <F8> :TlistToggle<CR>

let g:DoxygenToolkit_authorName="Anton Romanov" 
let g:DoxygenToolkit_licenseTag="AS IS"
"let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
"let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_server_log_level = "debug"
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_keep_logfiles = 1
let g:ycm_python_binary_path = "python3.6"
nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>
set errorformat^=%-G%f:%l:\ warning:%m

set list
set listchars=tab:>-

let g:syntastic_java_checkers = []

let g:nerdtree_tabs_open_on_gui_startup = 0
set modeline
set modelines=5
"let g:EclimCompletionMethod = 'omnifunc'
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"let g:EclimCompletionMethod = 'omnifunc'
if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif
set encoding=utf-8
