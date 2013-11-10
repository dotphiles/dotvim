"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup yankring
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

nnoremap <silent> <F8> :YRShow<CR>
let g:yankring_replace_n_pkey = '<C-n>'
let g:yankring_replace_n_nkey = '<C-b>'
let g:yankring_history_dir = $HOME.'/.vim/'
let g:yankring_history_file = '.yankring_history'

