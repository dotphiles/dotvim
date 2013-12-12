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
  set background=dark
  colorscheme base16-default
  highlight clear SignColumn
  autocmd ColorScheme * highlight clear SignColumn
endif
