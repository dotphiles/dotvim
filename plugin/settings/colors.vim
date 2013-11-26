"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup color scheme
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if has("user_commands")
  set t_Co=256
  let g:solarized_termtrans = 1
  set background=dark
  colorscheme solarized
  highlight clear SignColumn
  autocmd ColorScheme * highlight clear SignColumn
endif
