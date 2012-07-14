"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup yankring
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

" yankring
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
" ,y to show the yankring
nmap <leader>y :YRShow<cr>
let g:yankring_history_file = '.vim/.yankring_history'

