"
" Ack config for vim
"
let g:ackprg = 'ag --vimgrep'
nmap <Leader>k :Ack! "\b<cword>\b" <CR>
