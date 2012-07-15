"
" dotvim : https://github.com/dotphiles/dotvim
"
" Load required config files
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if has("user_commands")
  set nocompatible
  filetype off
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
  if VundleInstalled == 1
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
  endif
endif
