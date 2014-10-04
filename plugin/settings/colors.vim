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
  if (match($LC_TERM_PROFILE, "light") != -1)
    set background=light
  else
    set background=dark
  endif
  if (match($LC_TERM_PROFILE, "base16-bright") != -1)
    colorscheme base16-bright
  elseif (match($LC_TERM_PROFILE, "base16-chalk") != -1)
    colorscheme base16-chalk
  elseif (match($LC_TERM_PROFILE, "base16-eighties") != -1)
    colorscheme base16-eighties
  elseif (match($LC_TERM_PROFILE, "base16-greenscreen") != -1)
    colorscheme base16-greenscreen
  elseif (match($LC_TERM_PROFILE, "base16-mocha") != -1)
    colorscheme base16-mocha
  elseif (match($LC_TERM_PROFILE, "base16-monokai") != -1)
    colorscheme base16-monokai
  elseif (match($LC_TERM_PROFILE, "base16-ocean") != -1)
    colorscheme base16-ocean
  elseif (match($LC_TERM_PROFILE, "base16-pop") != -1)
    colorscheme base16-pop
  elseif (match($LC_TERM_PROFILE, "base16-railscasts") != -1)
    colorscheme base16-railscasts
  elseif (match($LC_TERM_PROFILE, "base16-solarized") != -1)
    colorscheme base16-solarized
  elseif (match($LC_TERM_PROFILE, "base16-tomorrow") != -1)
    colorscheme base16-tomorrow
  else
    colorscheme base16-default
  endif
  if (match($LC_TERM_PROFILE, "base16") != -1)
    highlight clear SignColumn
    autocmd ColorScheme * highlight clear SignColumn
  endif
endif
