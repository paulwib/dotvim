"
" dotvim : https://github.com/dotphiles/dotvim
"
" Enable syntax highlighting and settings for natively supported languages
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if has("syntax")
  syntax on
  filetype plugin indent on
endif

" Markdown: highlighting in fenced code blocks
let g:markdown_fenced_languages = ['html', 'javascript', 'bash=sh']

