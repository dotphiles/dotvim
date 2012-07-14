"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup command-t
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

" command-t
if exists("g:command_t_loaded")
  nmap <unique> <silent> <Leader>, :CommandT<CR>
  nmap <unique> <silent> <Leader>. :CommandTFlush<CR>:CommandT<CR>
  let g:CommandTMatchWindowAtTop=1
endif

