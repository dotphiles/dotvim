"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup color scheme
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if has("user_commands")
  set background=dark
  if !empty($LC_IDENTIFICATION)
    colorscheme $LC_IDENTIFICATION
  else
    colorscheme solarized
  endif
endif

