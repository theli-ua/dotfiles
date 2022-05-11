" Of course
set nocompatible

" Required Vundle setup
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'puremourning/vimspector'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/matchit.zip'
Plugin 'tpope/vim-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-scripts/Vimball'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'vim-scripts/groovyindent'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'vim-ruby/vim-ruby'
Plugin 'chikamichi/mediawiki.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'lepture/vim-jinja'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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
Plugin 'rust-lang/rust.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'ojroques/vim-oscyank'
Plugin 'vivien/vim-linux-coding-style'

call vundle#end()            " required

autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '+' | execute 'OSCYankReg +' | endif


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
" hybrid line numbers
set number relativenumber
set nu rnu
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

" Tagbar
nnoremap <silent> <F8> :TagbarToggle<CR>

let g:DoxygenToolkit_authorName="Anton Romanov" 
let g:DoxygenToolkit_licenseTag="AS IS"

" YCM
nmap <leader>yfw <Plug>(YCMFindSymbolInWorkspace)
cnoreabbrev ycm YcmCompleter
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <C-LeftMouse> <LeftMouse>:YcmCompleter GoTo<CR>
nnoremap <leader>jr :YcmCompleter GoToReferences<CR>
set completeopt+=popup
"let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_server_log_level = "info"
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_keep_logfiles = 0
let g:ycm_python_binary_path = "python3.6"
let g:ycm_always_populate_location_list = 1
let g:ycm_use_ultisnips_completer = 1
"let g:ycm_goto_buffer_command = 'new-or-existing-tab'
let g:ycm_use_clangd = 1
let g:ycm_key_list_select_completion = ['<c-j>', '<Down>']
let g:ycm_key_list_stop_completion = ['<C-y>']
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_previous_completion = ['<c-k>', '<Up>']
let g:ycm_log_level='debug'
" Trigger semantic completion after 2 characters
let g:ycm_semantic_triggers = {'python':'re!\w{2}','java':'re!\w{2}','c':'re!\w{2}','rust':'re!\w{2}'}
function FormatAndBack()
    let save_cursor = getcurpos()
    silent YcmCompleter Format
    call setpos('.', save_cursor)
endfunction
autocmd BufWritePre *.rs call FormatAndBack()
" Airline
let g:airline_powerline_fonts = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" show full tag hierarchy"
let g:airline#extensions#tagbar#flags = 'f'
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='zenburn'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>


nmap <leader>yf :YcmCompleter FixIt<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


set errorformat^=%-G%f:%l:\ warning:%m

let g:linuxsty_patterns = [ "/usr/src/", "/linux" ]

set list
set listchars=tab:>-

let g:nerdtree_tabs_open_on_gui_startup = 0

"set switchbuf+=usetab,newtab
"
let g:vimspector_enable_mappings = 'HUMAN'

" Enable modeline
set modeline
set modelines=5

if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif

set clipboard=unnamedplus

command! -nargs=? -range Dec2hex call s:Dec2hex(<line1>, <line2>, '<args>')
function! s:Dec2hex(line1, line2, arg) range
  if empty(a:arg)
    if histget(':', -1) =~# "^'<,'>" && visualmode() !=# 'V'
      let cmd = 's/\%V\<\d\+\>/\=printf("0x%x",submatch(0)+0)/g'
    else
      let cmd = 's/\<\d\+\>/\=printf("0x%x",submatch(0)+0)/g'
    endif
    try
      execute a:line1 . ',' . a:line2 . cmd
    catch
      echo 'Error: No decimal number found'
    endtry
  else
    echo printf('%x', a:arg + 0)
  endif
endfunction

command! -nargs=? -range Hex2dec call s:Hex2dec(<line1>, <line2>, '<args>')
function! s:Hex2dec(line1, line2, arg) range
  if empty(a:arg)
    if histget(':', -1) =~# "^'<,'>" && visualmode() !=# 'V'
      let cmd = 's/\%V0x\x\+/\=submatch(0)+0/g'
    else
      let cmd = 's/0x\x\+/\=submatch(0)+0/g'
    endif
    try
      execute a:line1 . ',' . a:line2 . cmd
    catch
      echo 'Error: No hex number starting "0x" found'
    endtry
  else
    echo (a:arg =~? '^0x') ? a:arg + 0 : ('0x'.a:arg) + 0
  endif
endfunction

" hover delay
set updatetime=3000

" Function to get executable name for current test unit
function GetRustExecutable()
    return trim(system('cargo test --message-format=json  --no-run -- --exact 2>/dev/null | grep artifact | grep ' . expand('%:t')  . ' | jq -r ".executable // empty"'))
endfunction

function VimspectorCurrentRustTest()
    let l:test_name = expand("<cword>")
    let l:executable = GetRustExecutable()

    call vimspector#LaunchWithSettings( #{ configuration: 'rust test',
                                \ executable: executable,
                                \ cmdlineargs: test_name} )
endfunction
