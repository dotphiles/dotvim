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
  let iCanHazVundle=1
  let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
  if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    let iCanHazVundle=0
  endif
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  Bundle 'gmarik/vundle'

  Bundle 'hsitz/VimOrganizer'
  Bundle 'Zenburn'
  Bundle 'mileszs/ack.vim'
  Bundle 'apidock.vim'
  Bundle 'calendar.vim--Matsumoto'
  Bundle 'kien/ctrlp.vim'
  Bundle 'Raimondi/delimitMate'
  Bundle 'mattn/gist-vim'
  Bundle 'greplace.vim'
  Bundle 'jade.vim'
  Bundle 'scrooloose/nerdcommenter'
  Bundle 'scrooloose/nerdtree'
  Bundle 'scrooloose/snipmate-snippets'
  Bundle 'msanders/snipmate.vim'
  Bundle 'scrooloose/syntastic'
  Bundle 'sjl/threesome.vim'
  Bundle 'utl.vim'
  Bundle 'tpope/vim-bundler'
  Bundle 'kchmck/vim-coffee-script'
  Bundle 'altercation/vim-colors-solarized'
  Bundle 'tpope/vim-cucumber'
  Bundle 'tpope/vim-endwise'
  Bundle 'tpope/vim-fugitive'
  Bundle 'vitaly/vim-gitignore'
  Bundle 'tpope/vim-haml'
  Bundle 'austintaylor/vim-indentobject'
  Bundle 'tpope/vim-markdown'
  Bundle 'jistr/vim-nerdtree-tabs'
  Bundle 'Lokaltog/vim-powerline'
  Bundle 'tpope/vim-rails'
  Bundle 'tpope/vim-rake'
  Bundle 'tpope/vim-repeat'
  Bundle 'vim-ruby/vim-ruby'
  Bundle 'ecomba/vim-ruby-refactoring'
  Bundle 'bbommarito/vim-slim'
  Bundle 'scrooloose/vim-space'
  Bundle 'wavded/vim-stylus'
  Bundle 'tpope/vim-surround'
  Bundle 'vitaly/vim-syntastic-coffee'
  Bundle 'nelstrom/vim-textobj-rubyblock'
  Bundle 'kana/vim-textobj-user'
  Bundle 'tsaleh/vim-tmux'
  Bundle 'tpope/vim-vividchalk'
  Bundle 'mattn/webapi-vim'
  Bundle 'YankRing.vim'
  Bundle 'vitaly/vim-rcov'
  Bundle 'Indent-Guides'
  Bundle 'JSON.vim'
  Bundle 'Puppet-Syntax-Highlighting'
  Bundle 'csexton/jekyll.vim'
  Bundle 'PProvost/vim-markdown-jekyll'
  Bundle 'chrisbra/color_highlight'
  Bundle 'jistr/vim-nerdtree-tabs'
  if v:version > 700
    Bundle 'Shougo/neocomplcache'
    Bundle 'Shougo/neocomplcache-snippets-complete'
    Bundle 'majutsushi/tagbar'
  endif
  if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
  endif
endif
