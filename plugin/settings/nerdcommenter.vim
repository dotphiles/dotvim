"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup nerdcommenter
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

" nerdcommenter
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

