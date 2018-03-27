"
" dotvim : https://github.com/dotphiles/dotvim
"
" Main dotvim config

" Problem with ordering so switch this on here first
" @see https://github.com/dotphiles/dotvim/issues/1
let g:neocomplcache_enable_at_startup = 1

set nocompatible

set encoding=utf-8
set binary

" presentation settings
set number              " precede each line with its line number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status lines
"set list listchars=tab:→\ ,trail:▸
set cursorline
"set clipboard=unnamed

" highlight spell errors
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black
" toggle spell check with F7
map <F7> :setlocal spell! spell?<CR>

" behavior
" ignore these files when completing names and in explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set shell=$SHELL        " use current shell for shell commands
set autowriteall        " Automatically save before commands like :next and :make
set hidden              " enable multiple modified buffers
set history=1000
set autoread            " automatically read file that has been changed on disk and doesn't have changes in vim
set backspace=indent,eol,start
set guioptions-=T       " disable toolbar"
set completeopt=menuone,preview
set cinoptions=:0,(s,u0,U1,g0,t0 " some indentation options ':h cinoptions' for details
set modelines=5         " number of lines to check for vim: directives at the start/end of file
set autoindent          " automatically indent new line
set updatetime=100      " Faster than the default 4 seconds

set ts=4                " number of spaces in a tab
set sw=4                " number of spaces for indent
set et                  " expand tabs into spaces

" mouse settings
if has("mouse")
  set mouse=a
endif
set mousehide           " Hide mouse pointer on insert mode."

" search settings
set incsearch           " Incremental search
set hlsearch            " Highlight search match
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

" directory settings
set nobackup            " do not write backup files
set nowritebackup       " do not write backup files
set noswapfile          " do not write .swp files
if has("persistent_undo")
  silent !mkdir -vp ~/.backup/vim/undo/ > /dev/null 2>&1
  set backupdir=~/.backup/vim,.       " list of directories for the backup file
  set directory=~/.backup/vim,~/tmp,. " list of directory names for the swap file
  set undofile
  set undodir=~/.backup/vim/undo/,~/tmp,.
endif

" folding
if has("folding")
  set foldcolumn=0        " columns for folding
  set foldmethod=syntax
  set foldlevel=9
  set nofoldenable        " dont fold by default
endif

if has("user_commands")
  let mapleader = ","
  let maplocalleader = "\\"
endif

" For a nice, huuuuuge viminfo file
if has("viminfo")
  set viminfo='100,f1,:100,/100,n$HOME/.vim/.viminfo
endif

" Remember last position in file
if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif

" Specify plug-in directory
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'KurtPreston/vimcolors'
Plug 'corntrace/bufexplorer'
Plug 'austintaylor/vim-indentobject'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

" Syntax plug-ins
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go'
Plug 'juvenn/mustache.vim'
Plug 'StanAngeloff/php.vim'
Plug 'martinda/Jenkinsfile-vim-syntax'

call plug#end()
