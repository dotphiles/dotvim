"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup tagbar
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if v:version > 700
  Bundle 'majutsushi/tagbar'
  " ,t to show tags window
  let g:tagbar_usearrows = 1
  nmap <leader>t :TagbarToggle<CR>
endif

