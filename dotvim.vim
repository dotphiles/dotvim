"
" dotvim : https://github.com/dotphiles/dotvim
"
" Install Vundle if missing
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if has("user_commands")
  let g:dotvim_version=0.1.3
  " Setting up Vundle - the vim plugin bundler
  let VundleInstalled=0
  let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
  if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    let VundleInstalled=1
  endif
  let g:neocomplcache_enable_at_startup=1
endif

