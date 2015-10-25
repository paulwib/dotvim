"
" dotphiles : https://github.com/dotphiles/dotphiles
"
" Essential vim plugins!
"
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

" Vundle itself
Plugin 'gmarik/vundle'

" General
if count(g:vundles, 'general')
  Plugin 'scrooloose/nerdtree'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-repeat'
  Plugin 'AutoClose'
  Plugin 'vim-scripts/sessionman.vim'
  Plugin 'matchit.zip'
  Plugin 'Lokaltog/vim-powerline'
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'jistr/vim-nerdtree-tabs'
  Plugin 'paulwib/vim-colorschemes'
  Plugin 'chriskempson/base16-vim'
  Plugin 'corntrace/bufexplorer'
  Plugin 'kien/ctrlp.vim'
  Plugin 'austintaylor/vim-indentobject'
  Plugin 'SearchComplete'
  Plugin 'Zenburn'
  Plugin 'sudo.vim'
  Plugin 'bronson/vim-trailing-whitespace'
  Plugin 'tpope/vim-fugitive'
  Plugin 'cakebaker/scss-syntax.vim'
endif

" General Programming
if count(g:vundles, 'programming')
  " Pick one of the checksyntax, jslint, or syntastic
  Plugin 'scrooloose/syntastic'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'godlygeek/tabular'
  if executable('ctags')
    Plugin 'majutsushi/tagbar'
  endif
  if v:version > 700
    Plugin 'Shougo/neocomplcache'
    Plugin 'Shougo/neosnippet'
    Plugin 'Indent-Guides'
  endif
endif

" PHP
if count(g:vundles, 'php')
  Plugin 'spf13/PIV'
endif

" Python
if count(g:vundles, 'python')
  " Pick either python-mode or pyflakes & pydoc
  "Plugin 'klen/python-mode'
  Plugin 'kevinw/pyflakes'
  Plugin 'fs111/pydoc.vim'
  Plugin 'python.vim'
  Plugin 'python_match.vim'
  Plugin 'pythoncomplete'
endif

" Javascript
if count(g:vundles, 'javascript')
  Plugin 'leshill/vim-json'
  Plugin 'groenewege/vim-less'
  Plugin 'taxilian/vim-web-indent'
endif

" HTML
if count(g:vundles, 'html')
  Plugin 'HTML-AutoCloseTag'
  Plugin 'othree/html5.vim'
  Plugin 'ChrisYip/Better-CSS-Syntax-for-Vim'
  Plugin 'juvenn/mustache.vim'
endif

" Ruby
if count(g:vundles, 'ruby')
  " Plugin 'tpope/vim-rails'
endif

" Misc
if count(g:vundles, 'misc')
  Plugin 'fatih/vim-go'
  Plugin 'elixir-lang/vim-elixir'
  " Plugin 'spf13/vim-markdown'
  Plugin 'plasticboy/vim-markdown'
  " Plugin 'spf13/vim-preview'
  Plugin 'tpope/vim-cucumber'
  " Plugin 'tpope/vim-cucumber'
  Plugin 'Puppet-Syntax-Highlighting'
  Plugin 'ekalinin/Dockerfile.vim'
endif

