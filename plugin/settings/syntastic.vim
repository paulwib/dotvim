"
" dotvim : https://github.com/paulwib/dotvim
"
" Setup syntastic
"
" Authors:
"   Paul Willoughby <paul@fivetide.com>
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Use eslint if .eslintrc present, otherwise use standard
autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['standard']

" Actually use semistandard, as I like semicolons :)
let g:syntastic_javascript_standard_exec = "semistandard"
let g:syntastic_javascript_standard_generic = 1
