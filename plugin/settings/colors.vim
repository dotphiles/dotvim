"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup color scheme
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if has("user_commands")
  " use 256 colors in Console mode if we think the terminal supports it
    set t_Co=256
  if !empty($LC_IDENTIFICATION)
    colorscheme $LC_IDENTIFICATION
  else
    set background=dark
    colorscheme solarized
  endif
endif

