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
Bundle 'gmarik/vundle'

" General
if count(g:vundles, 'general')
  Bundle 'scrooloose/nerdtree'
  "Bundle 'altercation/vim-colors-solarized'
  "Bundle 'spf13/vim-colors'
  Bundle 'tpope/vim-surround'
  Bundle 'tpope/vim-repeat'
  Bundle 'AutoClose'
  Bundle 'kien/ctrlp.vim'
  Bundle 'vim-scripts/sessionman.vim'
  Bundle 'matchit.zip'
  Bundle 'Lokaltog/vim-powerline'
  Bundle 'Lokaltog/vim-easymotion'
  Bundle 'jistr/vim-nerdtree-tabs'
  Bundle 'paulwib/vim-colorschemes'
  Bundle 'corntrace/bufexplorer'
  Bundle 'kien/ctrlp.vim'
  Bundle 'austintaylor/vim-indentobject'
  Bundle 'SearchComplete'
  Bundle 'Zenburn'
  Bundle 'sudo.vim'
  Bundle 'bronson/vim-trailing-whitespace'
  Bundle 'tpope/vim-fugitive'
endif

" General Programming
if count(g:vundles, 'programming')
  " Pick one of the checksyntax, jslint, or syntastic
  Bundle 'scrooloose/syntastic'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'godlygeek/tabular'
  if executable('ctags')
    Bundle 'majutsushi/tagbar'
  endif
  if v:version > 700
    Bundle 'Shougo/neocomplcache'
    Bundle 'Shougo/neosnippet'
    Bundle 'Indent-Guides'
  endif
endif

" PHP
if count(g:vundles, 'php')
  Bundle 'spf13/PIV'
endif

" Python
if count(g:vundles, 'python')
  " Pick either python-mode or pyflakes & pydoc
  "Bundle 'klen/python-mode'
  Bundle 'kevinw/pyflakes'
  Bundle 'fs111/pydoc.vim'
  Bundle 'python.vim'
  Bundle 'python_match.vim'
  Bundle 'pythoncomplete'
endif

" Javascript
if count(g:vundles, 'javascript')
  Bundle 'leshill/vim-json'
  Bundle 'groenewege/vim-less'
  Bundle 'taxilian/vim-web-indent'
endif

" HTML
if count(g:vundles, 'html')
  Bundle 'HTML-AutoCloseTag'
  Bundle 'othree/html5.vim'
  Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
  Bundle 'juvenn/mustache.vim'
endif

" Ruby
if count(g:vundles, 'ruby')
  " Bundle 'tpope/vim-rails'
endif

" Misc
if count(g:vundles, 'misc')
  Bundle 'jnwhiteh/vim-golang'
  " Bundle 'spf13/vim-markdown'
  Bundle 'plasticboy/vim-markdown'
  " Bundle 'spf13/vim-preview'
  " Bundle 'tpope/vim-cucumber'
  Bundle 'Puppet-Syntax-Highlighting'
endif

