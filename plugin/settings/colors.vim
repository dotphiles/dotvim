"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup color scheme
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if has("user_commands")
  if !empty($ITERM_PROFILE)
    if $ITERM_PROFILE == 'soldark'
      set background=dark
      colorscheme solarized
    elseif $ITERM_PROFILE == 'sollight'
      set background=light
      colorscheme solarized
    else
      set background=dark
      colorscheme $ITERM_PROFILE
    endif
  else
    set background=dark
    colorscheme solarized
  endif
endif

