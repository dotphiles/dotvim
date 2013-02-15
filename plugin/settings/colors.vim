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
  if empty($ITERM_PROFILE)
    colorscheme solarized
  else
    colorscheme $ITERM_PROFILE
  endif
endif

