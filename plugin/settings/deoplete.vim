let g:deoplete#enable_at_startup = 1

" Disable autocompletion for text/markdown files as really slows them down
autocmd bufread,bufnewfile *.md,*.txt let b:deoplete_disable_auto_complete = 1
