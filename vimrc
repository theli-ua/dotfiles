" Of course
set nocompatible

" Required Vundle setup
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
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
Plugin 'w0rp/ale'
Plugin 'petRUShka/vim-opencl'
Plugin 'cespare/vim-toml'
Plugin 'Raimondi/delimitMate'
Plugin 'jremmen/vim-ripgrep'
Plugin 'sirver/UltiSnips'
" Actual snippets
Plugin 'honza/vim-snippets'
Plugin 'jnurmine/Zenburn'

call vundle#end()            " required

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
set encoding=utf-8
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
nnoremap <F12> :NERDTreeTabsToggle<cr>


" ALE
" Disable for java
let b:ale_linters = {'java': []}
let g:ale_linters_explicit = 1

" Session managemengt
let g:session_autosave = 'yes'

" Taglist
nnoremap <silent> <F8> :TlistToggle<CR>

let g:DoxygenToolkit_authorName="Anton Romanov" 
let g:DoxygenToolkit_licenseTag="AS IS"

" YCM
cnoreabbrev ycm YcmCompleter
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>jr :YcmCompleter GoToReferences<CR>
"let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
"let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_server_log_level = "debug"
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_keep_logfiles = 0
let g:ycm_python_binary_path = "python3.6"
let g:ycm_always_populate_location_list = 1
let g:ycm_use_ultisnips_completer = 1
let g:ycm_goto_buffer_command = 'new-or-existing-tab'
let g:ycm_use_clangd = 1
let g:ycm_key_list_select_completion = ['<c-j>', '<Down>']
let g:ycm_key_list_stop_completion = ['<C-y>']
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_previous_completion = ['<c-k>', '<Up>']
" Trigger semantic completion after 2 characters
let g:ycm_semantic_triggers = {'python':'re!\w{2}','java':'re!\w{2}','c':'re!\w{2}','rust':'re!\w{2}'}
autocmd BufWritePost *.rs silent YcmCompleter Format
let g:ycm_language_server = 
  \ [ 
  \   {
  \     'name': 'rust',
  \     'cmdline': [ 'ra_lsp_server' ],
  \     'filetypes': [ 'rust' ],
  \     'project_root_files': [ 'Cargo.toml' ]
  \   }
  \ ]


let s:ycm_hover_popup = -1
function s:Hover()
  let response = youcompleteme#GetCommandResponse( 'GetDoc' )
  if response == ''
    return
  endif

  call popup_hide( s:ycm_hover_popup )
  let s:ycm_hover_popup = popup_atcursor( balloon_split( response ), {} )
endfunction

" CursorHold triggers in normal mode after a delay
autocmd CursorHold * call s:Hover()
" Or, if you prefer, a mapping:
"nnoremap <leader>D :call <SID>Hover()<CR>


" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


set errorformat^=%-G%f:%l:\ warning:%m

set list
set listchars=tab:>-

let g:nerdtree_tabs_open_on_gui_startup = 0

set switchbuf+=usetab,newtab

" Enable modeline
set modeline
set modelines=5

if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif

