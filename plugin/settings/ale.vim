"
" dotvim : https://github.com/paulwib/dotvim
"
" Setup ALE (Asynchronous Lint Engine)
"
" Authors:
"   Paul Willoughby <paul@fivetide.com>

" Use eslint if .eslintrc present, otherwise use standard
autocmd FileType javascript let g:ale_linters = findfile('.eslintrc', '.;') != '' ? {'javascript':['eslint']} : {'javascript':['standard']}

" I normally use semistandard
let g:ale_javascript_standard_executable = 'semistandard'
