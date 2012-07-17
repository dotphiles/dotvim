"
" dotvim : https://github.com/dotphiles/dotvim
"
" Load required config files
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

let &runtimepath = printf('%s,%s', '~/.vim.local', &runtimepath)

if has("user_commands")
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
endif

