"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup omnicomplete
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if has("user_commands")
  " omni completion settings
  set ofu=syntaxcomplete#Complete
  let g:rubycomplete_buffer_loading = 0
  let g:rubycomplete_classes_in_global = 1
endif

